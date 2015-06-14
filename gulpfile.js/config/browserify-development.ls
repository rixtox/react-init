require! path
require! './paths'

module.exports =
  src: path.join paths.src.jsx, 'app.jsx'
  dest: paths.dest.js
  file: 'app.js'
  options:
    debug: true
    fullPaths: true
    extensions: ['.jsx']
  require: ['react']
