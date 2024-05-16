import { authOptions } from "@/app/api/auth/[...nextauth]/route";
import { getServerSession } from "next-auth/next";
import { NextResponse } from "next/server";
import util from "util";
import db from "@/../../util/db";

const query = util.promisify(db.query).bind(db); //query diventa una funzione che puoi chiamare con gli stessi argomenti di db.query, ma invece di passare un callback, restituirà una Promise che sarà risolta o rigettata a seconda dell'esito della funzione db.query. Questo è utile quando si lavora con codice asincrono in uno stile più moderno e compatibile con le Promise

export const POST = async (req) => {
  const session = await getServerSession(authOptions);

  if (!session) {
    return NextResponse.json({ message: "unauthorized" }, { status: 403 });
  }

  const comment = await req.json();

  try {
    const result = await query(
      `
    INSERT INTO comments (content, fkUser, fkArticle) 
    VALUES (?, ?, ?)`,
      [comment.content, session?.user.id, comment.articleId]
    );

    if (result) return NextResponse.json({ status: 201 });
  } catch (error) {
    console.log(error);
    return new NextResponse.json(error, { status: 400 });
  }
};
