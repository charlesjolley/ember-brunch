{languages, plugins} = require 'brunch-extensions'
{LESSLanguage} = require 'brunch-extensions/lib/languages/less'
{HandlebarsLanguage} = require './brunch/handlebars_language'
{ManifestPlugin} = require './brunch/manifest_plugin'

# Make config loadable via require() for brunch.
exports.config =
  # Available plugins:
  # * AssetsPlugin: copy `app/assets` contents to `build/`
  plugins: [plugins.AssetsPlugin, ManifestPlugin]

  # Contains a list of output filenames that your application would generate.
  # Format:
  #
  # 'filename': 
  #   languages:
  #     'regExp, with which input files will be matched': language class
  #   order:
  #     before: [files, that would be loaded before anything else]
  #     after: [files, that would be loaded after anything else]
  #
  files:
    'scripts/app.js':
      languages:
        '\.js$': languages.JavaScriptLanguage
        '\.coffee$': languages.CoffeeScriptLanguage
        '\.eco$': languages.EcoLanguage
        '\.handlebars$': HandlebarsLanguage
      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery-1.7.js'
          'vendor/scripts/ember-0.9.4.js'
          'vendor/scripts/ember-data.js'
        ]

    'styles/app.css':
      languages:
        '\.css$': languages.CSSLanguage
        '\.less$': LESSLanguage
      order:
        before: ['vendor/styles/normalize.css']
        after: ['vendor/styles/helpers.css']
