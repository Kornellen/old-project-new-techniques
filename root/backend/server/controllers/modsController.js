const mysql = require("mysql");
const colors = require("colors");
const database = require("../config/database");

const $con = mysql.createConnection(database);
const log = console.log;

$con.connect((err) => (err ? log(err) : log("CONNECTED")));

const modsController = {};

modsController.loadMods = (req, res) => {
  const { category } = req.body;

  const $sql = "SELECT * from mods where modCat in (?)";

  $con.query($sql, [category], (err, result) => {
    if (err) {
      log(err);
      res.sendStatus(500);
    } else {
      res.status(200).send({ result: result });
    }
  });
};

module.exports = modsController;
