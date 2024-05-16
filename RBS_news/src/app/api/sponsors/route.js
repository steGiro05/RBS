import { NextResponse } from "next/server";
import util from "util";
import db from "@/../../util/db";
import { authOptions } from "@/app/api/auth/[...nextauth]/route";
import { getServerSession } from "next-auth/next";

const query = util.promisify(db.query).bind(db); //query diventa una funzione che puoi chiamare con gli stessi argomenti di db.query, ma invece di passare un callback, restituirà una Promise che sarà risolta o rigettata a seconda dell'esito della funzione db.query. Questo è utile quando si lavora con codice asincrono in uno stile più moderno e compatibile con le Promise

export const GET = async () => {
  const session = await getServerSession(authOptions);

  if (!session) {
    return NextResponse.json({ message: "unauthorized" }, { status: 403 });
  }

  try {
    const results = await query(`SELECT *
      FROM sponsors s
    `);

    if (results) return NextResponse.json(results, { status: 201 });
  } catch (error) {
    console.log(error);
    return NextResponse.json(error, { status: 400 });
  }
};
