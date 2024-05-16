import { NextResponse } from "next/server";
import util from "util";
import db from "@/../../util/db";
import { authOptions } from "@/app/api/auth/[...nextauth]/route";
import { getServerSession } from "next-auth/next";

const query = util.promisify(db.query).bind(db);

export async function GET(req, { params }) {
  const session = await getServerSession(authOptions);
  if (!session) {
    return NextResponse.json({ message: "unauthorized" }, { status: 403 });
  }

  const { user } = session;

  try {
    const result = await query(
      `
      select *
      from likes
      where fkArticle=? && fkUser=?
      
    `,
      [params.articleId, user.id]
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
