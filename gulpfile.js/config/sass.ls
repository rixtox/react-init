require! path

require! './paths'

module.exports =
  src: path.join paths.src.sass, 'style.scss'
  dest: path.join paths.dest.css
  file: 'style.css'
  options:
    loadPath:
      path.join paths.bower, 'bootstrap-sass-official/assets/stylesheets'
      path.join paths.bower, 'fontawesome/scss'
  minifycss:
    keepSpecialComments: 0
  autoprefixer:
    browsers: ['last 2 version']
