module.exports = (lineman) ->

  app = lineman.config.application

  files:
    "create-server":
      app: "app/server"
      generated: "generated/server"
      dist: "dist/server"

  config:
    prependTasks:
      common: ["create-server"].concat(app.prependTasks.common)

    clean:
      js:
        src: [
          "<%= files.create-server.generated %>"
          "<%= files.create-server.generated %>"
        ]

    coffee:
      compile:
        files:
          "<%= files.create-server.app %>": "<%= files.create-server.generated %>"
          "<%= files.create-server.app %>": "<%= files.create-server.dist %>"

