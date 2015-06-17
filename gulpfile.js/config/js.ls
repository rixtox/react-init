require! path

require! './paths'
require! './html'

module.exports =
  src: path.join paths.src.js, '**/*.js'
  dest: paths.dest.js
  params: html.params
