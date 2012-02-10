fs = require 'fs'
async = require 'async'

class exports.HandlebarsLanguage
  queue: async.queue fs.readFile, 5

  constructor: (@config) ->

  readFile: (file, callback) ->
    @queue.push file, (error, data) ->
      unless error
        moduleId = 'FOO'
        data = JSON.stringify data.toString()
        data = "Ember.TEMPLATES[module.id] = Ember.Handlebars.compile(" +
          data + ");\n" 

      callback error, data

  compile: (path, callback) ->
    @readFile path, callback

