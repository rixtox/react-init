require! path

require! './paths'

module.exports =
  server:
    baseDir: paths.dest.root
    middleware: [
      require('connect-history-api-fallback')!
    ]
  open: false
  files:
    path.join paths.dest.root, 'index.html'
