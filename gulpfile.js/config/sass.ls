require! path

require! './paths'

module.exports =
  src: path.join paths.src.sass, '**/*.scss'
  dest: path.join paths.dest.css
  file: 'style.css'
  options:
    imagePath: path.relative paths.dest.css, paths.dest.images
  autoprefixer:
    browsers: ['last 2 version']
