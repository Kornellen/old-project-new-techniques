const mysql = require("mysql");
const colors = require("colors");
const database = require("../config/database");
const logger = require("../config/logger");

const $con = mysql.createConnection(database);
const log = console.log;

$con.connect((err) =>
  err
    ? logger.error(`Error at connecting to db: ${err}`)
    : logger.info("Connected")
);

const modsController = {};

modsController.loadMods = (req, res) => {
  const { category } = req.body;

  const $sql = "SELECT * from mods where modCat in (?)";

  $con.query($sql, [category], (err, result) => {
    if (err) {
      logger.error(`Error at db query: ${err}`);
      res.sendStatus(500);
    } else {
      logger.info("Success");
      res.status(200).send({ result: result });
    }
  });
};

module.exports = modsController;
