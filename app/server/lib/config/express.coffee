"use strict"
express = require("express")
path = require("path")
config = require("./config")

# # Express configuration

module.exports = (app) ->
  app.configure "development", ->
    app.use require("connect-livereload")()

    # Disable caching of scripts for easier testing
    app.use noCache = (req, res, next) ->
      if req.url.indexOf("/js/") is 0
        res.header "Cache-Control", "no-cache, no-store, must-revalidate"
        res.header "Pragma", "no-cache"
        res.header "Expires", 0
      next()
      return

    app.use express.static(path.join(config.root, ".tmp"))
    app.use express.static(path.join(config.root, "app"))
    app.use express.errorHandler()
    app.set "views", config.root + "/app/views"
    return

  app.configure "production", ->
    app.use express.favicon(path.join(config.root, "public", "favicon.ico"))
    app.use express.static(path.join(config.root, "public"))
    app.set "views", config.root + "/views"
    app.set "trust proxy", true
    return

  app.configure ->
    app.engine "html", require("ejs").renderFile
    app.set "view engine", "html"
    app.use express.logger("dev")
    app.use express.json()
    app.use express.urlencoded()
    app.use express.methodOverride()

    # Router needs to be last
    app.use app.router
    return

  return