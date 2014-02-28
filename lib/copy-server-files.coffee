ncp = require('ncp').ncp
path = require('path')
mkdirp = require('mkdirp')

module.exports =
  initialize: ->
    mkdirp "app/server", (err) ->
      return console.error(err)  if err
      ncp "server-files", "app/server", (err) ->
        return console.error(err)  if err
          ncp "static", "app/static", (err) ->
          return console.error(err)  if err
          console.log "done!"
          return
        return
      return





