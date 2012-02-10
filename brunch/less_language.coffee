
LESS = require 'less'
PATH = require 'path'

{BaseLanguage} = require 'brunch-extensions/lib/languages/base'

class exports.LESSLanguage extends BaseLanguage

  compile: (file, done) ->
    paths = @config.less_paths || []
    paths = paths.map (path) -> PATH.resolve path
    paths.unshift '.'

    @readFile file, (error, data) ->
      return done(error) if error != null
      LESS.render data, { paths: paths }, done
