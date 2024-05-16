import { authOptions } from "@/app/api/auth/[...nextauth]/route";
import { getServerSession } from "next-auth/next";
import { NextResponse } from "next/server";
import util from "util";
import db from "@/../../util/db";

const query = util.promisify(db.query).bind(db);

export async function GET(req, { params }) {
  const session = await getServerSession(authOptions);

  if (!session) {
    return NextResponse.json({ message: "unauthorized" }, { status: 403 });
  }

  try {
    const result = await query(
      `
    SELECT c.content, u.username, c.publishing_date from comments c
    INNER JOIN users u on c.fkUser = u.id
    WHERE c.fkArticle = ?
    ORDER BY c.publishing_date DESC
    `,
      [params.articleId]
    );

    return NextResponse.json(result, { status: 201 });
  } catch (error) {
    console.log(error);
    return NextResponse.json(
      { error: "Errore durante l'esecuzione della query" },
      { status: 500 }
    );
  }
}
