import { authOptions } from "@/app/api/auth/[...nextauth]/route";
import { getServerSession } from "next-auth/next";
import { NextResponse } from "next/server";
import util from "util";
import db from "@/../../util/db";
import fs from "fs";
import path from "path";

const query = util.promisify(db.query).bind(db);

export const POST = async (req) => {
  const session = await getServerSession(authOptions);
  if (!session) {
    return NextResponse.json({ message: "unauthorized" }, { status: 403 });
  }

  const data = await req.formData();
  const imgFile = data.get("img");
  const contentFile = data.get("contentFile");

  if (!contentFile) {
    return NextResponse.json({ message: "no content" }, { status: 500 });
  }

  const bytes = await contentFile.arrayBuffer();
  const buffer = Buffer.from(bytes);
  const text = buffer.toString("utf-8");

  const user = await query(
    `
    SELECT j.id
    FROM journalists j
    WHERE j.fkUser = ?
    LIMIT 1
    `,
    [session?.user.id]
  );

  console.log(user[0]);

  if (user.length !== 1) {
    return NextResponse.json(
      { message: "user not a journalist" },
      { status: 500 }
    );
  }

  let randomFileName = null;
  if (imgFile != "") {
    randomFileName = `${Math.random().toString(36).substring(7)}.jpg`;
    const imgPath = path.join(
      process.cwd(),
      "public/articlesImg",
      randomFileName
    );

    try {
      // Leggi il contenuto del file imgFile e scrivilo nel file sul filesystem
      const imgContent = await imgFile.arrayBuffer();
      fs.writeFileSync(imgPath, Buffer.from(imgContent));
    } catch (error) {
      console.error("Error saving image file:", error);
      return NextResponse.json(
        { message: "Error saving image file" },
        { status: 500 }
      );
    }
  }

  // Inserire qui la logica per l'inserimento del record nel database

  console.log(randomFileName);
  const result = await query(
    `
    INSERT INTO articles (title,subtitle,content,fkGenre,fkJournalist,imgUrl)
    VALUES (?,?,?,?,?,?)
    `,
    [
      data.get("title"),
      data.get("subtitle"),
      text,
      data.get("genre"),
      user[0].id,
      randomFileName,
    ]
  );

  if (!result) {
    return NextResponse.json(
      { message: "Error inserting into database" },
      { status: 500 }
    );
  }

  return NextResponse.json({ status: 200 });
};
