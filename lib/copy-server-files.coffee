ncp = require('ncp').ncp
path = require('path')

module.exports =
  initialize: ->
    ncp "server-files", "../../app/server", (err) ->
      return console.error(err)  if err
      console.log "done!"
      return