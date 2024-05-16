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
      SELECT a.id, a.title, a.subtitle, a.content,a.publishing_date,a.imgUrl, u.first_name, u.last_name,g.id as idGenre, g.name as genre
      FROM articles a
      INNER JOIN journalists j ON a.fkJournalist = j.id
      INNER JOIN users u ON j.fkUser = u.id
      INNER JOIN genres g ON a.fkGenre = g.id
      WHERE a.id = ?
      LIMIT 1
    `,
      [params.articleId]
    );

    const likes = await query(
      `
    SELECT count(*) as likes
    from likes l
    WHERE l.fkArticle=?
  `,
      [params.articleId]
    );

    const likesCount = likes[0].likes; // Estrae il conteggio dei "mi piace" dall'oggetto risultante
    result[0].likesCount = likesCount;

    if (result.length > 0) {
      // Restituisci solo il primo risultato
      return NextResponse.json(result[0], { status: 201 });
    } else {
      // Nessun risultato trovato
      return NextResponse.json(
        { message: "Nessun risultato trovato" },
        { status: 404 }
      );
    }
  } catch (error) {
    console.log(error);
    return NextResponse.json(
      { error: "Errore durante l'esecuzione della query" },
      { status: 500 }
    );
  }
}
