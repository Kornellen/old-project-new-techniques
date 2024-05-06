const express = require("express");
const cors = require("cors");

const app = express();
const log = console.log;
const PORT = 5175;

const modsRoutes = require("./routes/modsRoutes");

const routes = [modsRoutes];

app.use(cors());
app.use(express.json());
app.use("/api", routes);

app.listen(PORT, () => {
  log(`APP WORKING ON http://localhost:${PORT}/`);
});
