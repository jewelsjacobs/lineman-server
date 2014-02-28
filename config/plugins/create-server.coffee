module.exports = (lineman) ->

  app = lineman.config.application

  files:
    "createserver":
      app: "app/server"
      generated: "generated/js/app.coffee.js"

  config:

    coffee:
      compile:
        files:
          "<%= files.createserver.generated %>": "<%= files.createserver.app %>/**/*.coffee"

