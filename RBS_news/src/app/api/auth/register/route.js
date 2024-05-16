import { NextResponse } from "next/server";
import util from "util";
import db from "@/../../util/db";
import bcrypt from "bcrypt";
const query = util.promisify(db.query).bind(db); //query diventa una funzione che puoi chiamare con gli stessi argomenti di db.query, ma invece di passare un callback, restituirà una Promise che sarà risolta o rigettata a seconda dell'esito della funzione db.query. Questo è utile quando si lavora con codice asincrono in uno stile più moderno e compatibile con le Promise

export const POST = async (req) => {
  const user = await req.json();
  user.password = await bcrypt.hash(user.password, 10);

  try {
    const checkEmail = await query(
      `SELECT EXISTS (
      SELECT 1
      FROM users
      WHERE email = ?
    ) AS email_exists`,
      [user.email]
    );

    if (checkEmail[0].email_exists) {
      return NextResponse.json(
        { message: "Email already exists" },
        { status: 409 }
      );
    }

    const checkUsername = await query(
      `SELECT EXISTS (
      SELECT 1
      FROM users
      WHERE username = ?
    ) AS username_exists`,
      [user.username]
    );

    if (checkUsername[0].username_exists) {
      return NextResponse.json(
        { message: "Username already exists" },
        { status: 409 }
      );
    }

    const results = await query(
      `INSERT INTO users (id, username, email, hash, first_name, last_name, date_of_birth)
        VALUES (UUID(), ?,?,?,?,?,?)`,
      [
        user.username,
        user.email,
        user.password,
        user.name,
        user.surname,
        user.birthday,
      ]
    );

    // Ottieni l'UUID dell'utente appena inserito
    const userId = results.insertId;

    if (results) return NextResponse.json(userId, { status: 201 });
  } catch (error) {
    console.log(error);
    return new NextResponse.json(error, { status: 400 });
  }
};
