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
          "<%= files.server.generated %>"
          "<%= files.dist.generated %>"
        ]

    coffee:
      compile:
        files:
          "<%= files.server.app %>": "<%= files.server.generated %>"
          "<%= files.server.app %>": "<%= files.server.dist %>"

