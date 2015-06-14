require! path

require! './paths'

module.exports =
  server:
    baseDir: paths.dest.root
  files:
    path.join paths.dest.root, 'index.html'
