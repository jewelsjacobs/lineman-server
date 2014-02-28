ncp = require('ncp').ncp;

module.exports =
  initialize: ->
    ncp "./server", "../../app", (err) ->
      return console.error(err)  if err
      console.log "done!"
      return