const sqlite3 = require('sqlite3').verbose();
const bdproy = "bdproy.db";
const db = new sqlite3.Database(bdproy);

const getUsers = async (req, res) => {
  var sql = "SELECT * FROM usuarios"
    db.all(sql, (err, rows) => {
      if (err) {
        res.status(400).json({"error":err.message});
        return;
      }
      res.json({ Users: rows })
    });
};

module.exports = { getUsers }
