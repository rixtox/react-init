require! path

require! './paths'

module.exports =
  src:
    path.join paths.src.sass, '**/*.scss'
  dest: path.join paths.dest.css
  file: 'style.css'
  options:
    outputStyle: 'compressed'
    includePaths:
      path.join paths.bower, 'bootstrap-sass-official/assets/stylesheets'
      path.join paths.bower, 'fontawesome/scss'
    imagePath: path.relative paths.dest.css, paths.dest.images
  autoprefixer:
    browsers: ['last 2 version']
