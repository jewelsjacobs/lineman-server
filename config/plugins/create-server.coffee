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
        src: app.clean.js.src.concat("<%= files.create-server.generated %>","<%= files.create-server.dist %>")

    coffee:
      compile:
        files: app.coffee.compile.files.concat("<%= files.create-server.generated %>","<%= files.create-server.dist %>")

