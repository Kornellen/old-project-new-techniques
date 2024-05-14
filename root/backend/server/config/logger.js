const path = require("path");
const winston = require("winston");
const { combine, colorize, timestamp, json, printf } = winston.format;

const logger = winston.createLogger({
  level: "info",
  format: combine(timestamp({ format: "YYYY-MM-DD hh:mm:ss A" }), json()),
  transports: [
    new winston.transports.File({
      filename: path.join("logs", "app-info.log"),
      level: "info",
    }),
    new winston.transports.File({
      filename: path.join("logs", "app-error.log"),
      level: "error",
    }),
    new winston.transports.File({
      filename: path.join("logs", "app-warn.log"),
      level: "warn",
    }),
  ],
});

// console.log(process.cwd());

// logger.info("Test info");
// logger.error("Test error");
// logger.warn("Test warn");

module.exports = logger;
