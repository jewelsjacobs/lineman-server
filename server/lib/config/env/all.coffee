"use strict"

# # All environments configuration

path = require("path")
rootPath = path.normalize(__dirname + "/../../..")
module.exports =
  root: rootPath
  port: process.env.PORT || 3000