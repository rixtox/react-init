require! path

require! './paths'

module.exports =
  src: path.join paths.src.images, '**'
  dest: paths.dest.images
