opts = require './browserify-development'

opts.minifyify =
  map: false
opts.options.debug = false
opts.options.fullPaths = false

module.exports = opts
