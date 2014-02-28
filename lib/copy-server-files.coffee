ncp = require('ncp').ncp
path = require('path')

module.exports =
  initialize: ->
    serverFiles = path.join(__dirname, 'server-files')
    ncp serverFiles, "../../app", (err) ->
      return console.error(err)  if err
      console.log "done!"
      return