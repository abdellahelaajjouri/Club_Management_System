const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const app = express();
app.use(cors());
app.use(bodyParser.json());

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Abdellah1",
  database: "mydatabase",
});

connection.connect((err) => {
  if (err) {
    console.log("Error connecting to MySQL:", err);
  } else {
    console.log("Connected to MySQL!");
  }
});


app.post("/list-clubs", (req, res) => {
  let query = req.body.query,
    options = req.body.options,
    limit = Number(req.query.limit),
    page = Number(req.query.page) + 1,
    offset = (page - 1) * limit,
    params = req.params;
  offset = offset < 0 ? 0 : offset;

  connection.query(
    "SELECT * FROM clubs where trashed_id is null limit ? offset ? ",
    [limit, offset],
    (err, results) => {
      if (err) {
        res.status(500).json({ error: true, message: "Internal Server Error" });
      }
      connection.query(
        "SELECT count(*) clubsCount FROM clubs where trashed_id is null ",
        (err, lengthClubs) => {
          if (err) {
            res
              .status(500)
              .json({ error: true, message: "Internal Server Error" });
          }
          res.status(200).json({
            options: options,
            limit: limit,
            page: page - 1,
            length: lengthClubs.shift().clubsCount,
            data: results,
          });
        }
      );
    }
  );
});

app.delete("/delete-club/:id", (req, res) => {
  const clubId = req.params.id;
  const deletedAt = new Date().toISOString().slice(0, 19).replace("T", " ");
  const trashedId = 1;
  const sql = "UPDATE clubs SET deleted_at=?, trashed_id=? WHERE id=?";
  connection.query(sql, [deletedAt, trashedId, clubId], (err, result) => {
    if (err) {
      console.error("Error deleting club:", err);
      res
        .status(500)
        .json({ success: false, message: "Internal Server Error" });
    } else if (result.affectedRows === 0) {
      res.status(404).json({ success: false, message: "Club not found" });
    } else {
      res.json({ success: true, message: "Club deleted successfully" });
    }
  });
});

app.post("/insert-club", (req, res) => {
  const { nom, slug, categories, logo, country, sexe, type, competitions } =
    req.body;
  const sql =
    "INSERT INTO clubs (nom, slug, categories, logo, country, sexe, type, competitions) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
  const values = [
    nom,
    slug,
    categories,
    logo,
    country,
    sexe,
    type,
    competitions,
  ];
  connection.query(sql, values, (err, result) => {
    if (err) {
      console.error("Error inserting club:", err);
      res
        .status(500)
        .json({ success: false, message: "Internal Server Error" });
    } else {
      console.log("Result:", result);
      res.json({ success: true, message: "Club inserted successfully" });
    }
  });
});

app.put("/update-clubs/:id", (req, res) => {
  const clubId = req.params.id;
  const { nom, slug, categories, logo, country, sexe, type, competitions } =
    req.body;
  const updateQuery =
    "UPDATE clubs SET nom = ?, slug = ?, categories = ?, logo = ?, country = ?, sexe = ?, type = ?, competitions = ? WHERE id = ?";

  connection.query(
    updateQuery,
    [nom, slug, categories, logo, country, sexe, type, competitions, clubId],
    (err, result) => {
      if (err) {
        console.error("Error updating club:", err);
        res
          .status(500)
          .json({ success: false, message: "Internal Server Error" });
      } else if (result.affectedRows === 0) {
        res.status(404).json({ success: false, message: "Club not found" });
      } else {
        res.json({ success: true, message: "Club updated successfully" });
      }
    }
  );
});

app.get("/list-country/:query?", (req, res) => {
  let query = req.params.query;
  if (!query) {
    query = "";
  }
  const sql = `SELECT * FROM country WHERE name LIKE '%${query}%'`;
  connection.query(sql, (err, results) => {
    if (err) {
      console.error("Error fetching countries:", err);
      res
        .status(500)
        .json({ success: false, message: "Internal Server Error" });
    } else {
      console.log("Results:", results);
      res.json({ success: true, data: results });
    }
  });
});

app.get("/list-competitions/:query?", (req, res) => {
  let query = req.params.query;
  if (!query) {
    query = "";
  }
  const sql = `SELECT * FROM competition WHERE name LIKE '%${query}%'`;
  connection.query(sql, (err, results) => {
    if (err) {
      console.error("Error fetching competition:", err);
      res
        .status(500)
        .json({ success: false, message: "Internal Server Error" });
    } else {
      console.log("Results:", results);
      res.json({ success: true, data: results });
    }
  });
});

app.listen(3000, () => {
  console.log("Server started on port 3000!");
});
