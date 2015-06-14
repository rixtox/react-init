require! path

require! './paths'

module.exports =
  src: path.join paths.src.root, 'index.html'
  dest: paths.dest.root
  params:
    basePath: '/'

module.exports.params.url = (p) ->
  path.join module.exports.params.basePath, p
