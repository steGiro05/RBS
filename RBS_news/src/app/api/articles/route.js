import { authOptions } from "@/app/api/auth/[...nextauth]/route";
import { getServerSession } from "next-auth/next";
import { NextResponse } from "next/server";
import util from "util";
import db from "@/../../util/db";

const query = util.promisify(db.query).bind(db); //query diventa una funzione che puoi chiamare con gli stessi argomenti di db.query, ma invece di passare un callback, restituirà una Promise che sarà risolta o rigettata a seconda dell'esito della funzione db.query. Questo è utile quando si lavora con codice asincrono in uno stile più moderno e compatibile con le Promise

export const GET = async (req, res) => {
  const session = await getServerSession(authOptions);

  if (!session) {
    return NextResponse.json({ message: "unauthorized" }, { status: 403 });
  }

  const { user } = session;

  try {
    const results =
      await query(`SELECT a.id, a.title, a.subtitle,a.publishing_date,a.imgUrl, u.first_name, u.last_name,g.id as genreId, g.name as genre FROM articles a
    INNER JOIN journalists j on a.fkJournalist=j.id
    INNER JOIN users u ON j.fkUser = u.id
    INNER JOIN genres g on a.fkGenre=g.id 
    WHERE a.publishing_date >= DATE_SUB(NOW(), INTERVAL 1 WEEK)
    ORDER BY a.publishing_date DESC
    `);

    let sortedArticles = null;
    const config = { pattern: [0, 5, 6], dim: 9 };

    //RACCOLTA DATI PER IL FEED
    const commentsPerGenre = await query(
      `SELECT a.fkGenre as id, COUNT(*) as count
    FROM comments c
    INNER JOIN users u on c.fkUser=u.id
    INNER JOIN articles a on c.fkArticle=a.id
    WHERE c.fkUser = ?
    GROUP by a.fkGenre
    `,
      [user.id]
    );

    const likePerGenre = await query(
      `SELECT a.fkGenre as id, COUNT(*) as count
      FROM likes l
      INNER JOIN users u on l.fkUser=u.id
      INNER JOIN articles a on l.fkArticle=a.id
      WHERE l.fkUser = ?
      GROUP by a.fkGenre
      `,
      [user.id]
    );

    const likedArticles =
      await query(`SELECT l.fkArticle as id, count(*) as count
    FROM likes l 
    GROUP BY l.fkArticle
    order by count(*) desc
    limit 10`);

    const commentedArticles =
      await query(`SELECT c.fkArticle as id, count(*) as count
    FROM comments c 
    GROUP BY c.fkArticle
    order by count(*) desc  
    limit 10`);

    const payload = {
      articles: results,
      commentsPerGenre: commentsPerGenre,
      likePerGenre: likePerGenre,
      likedArticles: likedArticles,
      commentedArticles: commentedArticles,
    };

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

    if (sortedArticles)
      return NextResponse.json(sortedArticles, { status: 201 });
  } catch (error) {
    console.log(error);
    return NextResponse.json(error, { status: 400 });
  }
};
