const express = require("express");
const cors = require("cors");

const app = express();
const log = console.log;
const PORT = 5175;

const modsRoutes = require("./routes/modsRoutes");
const logger = require("./config/logger");
const morganMiddleware = require("./middleware/morgan");

const routes = [modsRoutes];

app.use(morganMiddleware);
app.use(cors());
app.use(express.json());
app.use("/api", routes);

app.listen(PORT, (err) => {
  err
    ? logger.error(`Error while starting app ${err} ⛔`)
    : logger.info(`APP WORKING ON http://localhost:${PORT}/ ✅`);
});
