"use strict"
express = require("express")

# # Main application file

  # Set default node environment to development
process.env.NODE_ENV = process.env.NODE_ENV or "development"

  # Application Config
config = require("./lib/config/config")
app = express()

  # Express settings
require("./lib/config/express") app

  # Routing
require("./lib/routes") app

  # Start server
app.listen config.port, ->
  console.log "Express server listening on port %d in %s mode", config.port, app.get("env")
  return


  # Expose app
exports = module.exports = app