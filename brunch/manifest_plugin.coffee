
{BasePlugin} = require 'brunch-extensions/lib/plugins/base'
PATH         = require 'path'
FS           = require 'fs'

# Update the manifest version everytime it is regenerated
class exports.ManifestPlugin extends BasePlugin

  constructor: (@config) ->

  load: (done) ->
    srcPath = PATH.resolve @getRootPath  'app', 'cache.manifest'
    dstPath = PATH.resolve @getBuildPath 'cache.manifest'
    body = FS.readFileSync srcPath, 'utf8'
    body = body.replace /\{VERSION\}/, Date.now()
    FS.writeFileSync dstPath, body
    console.log "writing to #{dstPath}"
    done()
