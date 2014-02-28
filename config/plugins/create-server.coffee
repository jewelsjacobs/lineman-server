module.exports = (lineman) ->

  app = lineman.config.application

  files:
    "createserver":
      app: "app/server"
      generated: "generated/server"
      dist: "dist/server"

  config:

    clean:
      js:
        src: [
          "<%= files.createserver.generated %>"
          "<%= files.createserver.dist %>"
        ]

    coffee:
      compile:
        files:
          "<%= files.createserver.app %>": "<%= files.createserver.generated %>"
          "<%= files.createserver.app %>": "<%= files.createserver.dist %>"

