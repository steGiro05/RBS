const mysql = require("mysql2");

const pool = mysql.createPool({
  connectionLimit: 1000,
  host: "    ",
  user: "   ",
  password: "",
  database: "    ",
});

export default pool;
