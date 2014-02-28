"use strict"
api = require("./controllers/api")
index = require("./controllers/index")

# # Application routes

module.exports = (app) ->

  # Server API Routes
  app.get "/api/content", api.content

  # All other routes to use Angular routing in app/scripts/app.js
#  app.get "/partials/*", index.partials
  app.get "/*", index.index

  return