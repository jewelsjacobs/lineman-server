"use strict"

# Get awesome things

exports.awesomeThings = (req, res) ->
  res.json [
    {
      name: "AngularJS"
      info: "AngularJS is a toolset for building the framework most suited to your application development."
      awesomeness: 10
    }
    {
      name: "Lineman"
      info: "Grunt and Express wrapper"
      awesomeness: 10
    }
    {
      name: "Express"
      info: "Flexible and minimalist web application framework for node.js."
      awesomeness: 10
    }
    {
      name: "Yeti"
      info: "Cool Bootstrap theme."
      awesomeness: 10
    }
    {
      name: "LESS"
      info: "CSS pre-processor that extends the CSS language, adding features that allow variables, mixins, functions, etc. "
      awesomeness: 10
    }
    {
      name: "CoffeeScript"
      info: "A Ruby-esc a little language that compiles into JavaScript."
      awesomeness: 10
    }
  ]
  return