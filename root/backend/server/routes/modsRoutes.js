const express = require("express");
const modsController = require("../controllers/ModsController");

const router = express.Router();

router.post("/mods", modsController.loadMods);

module.exports = router;
