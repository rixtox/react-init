require! path
require! glob

require! './paths'

module.exports =
  src: path.join paths.src.root, 'index.html'
  dest: paths.dest.root
  params:
    basePath: '/'
  minify:
    conditionals: true
    spare: true

module.exports.params.url = (p) ->
  path.join module.exports.params.basePath, p

module.exports.params.css = ->
  glob.sync path.join paths.dest.css, '*.css'
    .map (p) -> '/' + path.relative paths.dest.root, p
