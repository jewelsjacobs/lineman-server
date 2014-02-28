module.exports = (lineman) ->

  app = lineman.config.application

  files:
    "create-server":
      app: "app/server"
      generated: "generated/server"
      dist: "dist/server"

  config:
    clean:
      js:
        src: app.concat_sourcemap.js.src.concat("<%= files.create-server.generated %>","<%= files.create-server.dist %>")

  coffee:
    compile:
      files:
        "<%= files.create-server.app %>": "<%= files.create-server.generated %>"

