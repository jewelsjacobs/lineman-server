"use strict"

# Page Content

exports.content = (req, res) ->
  res.json [
    {
      title: "Coming Soon!",
      body: "Check back to see this page."
    }
  ]

  module.exports = drawRoutes: (app) ->
    app.get '/api/content', (req, res) ->
      res.json [
        {
          title: "Coming Soon!",
          body: "Check back to see this page."
        }
      ]