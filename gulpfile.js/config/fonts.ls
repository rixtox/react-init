require! path

require! './paths'

module.exports =
  src:
    path.join paths.bower, 'fontawesome/fonts/**.*'
    path.join paths.bower, 'bootstrap-sass-official/assets/fonts/**/*.*'
  dest: path.join paths.dest.fonts
