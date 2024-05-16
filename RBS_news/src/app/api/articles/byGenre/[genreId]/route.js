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

  console.log(session);

  try {
    const results = await query(
      `SELECT a.id, a.title, a.subtitle,a.publishing_date,a.imgUrl, u.first_name, u.last_name, g.name as genre FROM articles a
    INNER JOIN journalists j on a.fkJournalist=j.id
    INNER JOIN users u ON j.fkUser = u.id
    INNER JOIN genres g on a.fkGenre=g.id
    WHERE fkGenre=?
    ORDER BY a.publishing_date DESC
    `,
      [params.genreId]
    );

    const payload = { articles: results };
    let sortedArticles = null;
    const config = { pattern: [6, 5, 0], dim: 9 };

    try {
      await fetch(
        `http://localhost:5000/sort_articles?config=${JSON.stringify(config)}`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(payload),
        }
      )
        .then((response) => {
          if (!response.ok) {
            //se non c'è un errore nel fetching vengono ritornati i dati in ordine cronologico
            console.log(response);
          }
          return response.json();
        })
        .then((data) => {
          sortedArticles = data;
        });
    } catch (error) {
      sortedArticles = results;
    }

    if (sortedArticles) {
      return NextResponse.json(sortedArticles, { status: 201 });
    } else {
      return NextResponse.json({ status: 500 });
    }
  } catch (error) {
    console.log(error);
    return NextResponse.json(error, { status: 400 });
  }
}
