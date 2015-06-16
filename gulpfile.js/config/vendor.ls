require! path

require! './paths'

module.exports =
  src:
    path.join paths.bower, '**/require/index.js'
    path.join paths.bower, 'jquery/dist/jquery.min.js'
    path.join paths.bower, 'jquery/dist/jquery.min.map'
    path.join paths.bower, 'jquery-ui/jquery-ui.min.js'
  dest: path.join paths.dest.vendor
