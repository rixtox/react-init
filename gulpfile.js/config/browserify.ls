require! path
require! './paths'

module.exports =
  dev:
    src: path.join paths.src.jsx, 'app.jsx'
    dest: paths.dest.js
    file: 'app.js'
    options:
      debug: true
      fullPaths: true
      extensions: ['.jsx']
    require: ['react']
  prod:
    src: path.join paths.src.jsx, 'app.jsx'
    dest: paths.dest.js
    file: 'app.js'
    options:
      debug: false
      fullPaths: false
      extensions: ['.jsx']
    require: ['react']
    minifyify:
      map: false
