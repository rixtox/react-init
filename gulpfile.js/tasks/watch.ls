require! path
require! gulp

require! '../config'

watch = require 'gulp-watch'

gulp.task 'watch', ['browserSync'], ->
  watch do
    config.html.src
    -> gulp.start 'html:development'
  watch do
    path.join config.paths.src.sass, '**/*.scss'
    -> gulp.start 'sass:development'
  watch do
    path.join config.js.src
    -> gulp.start 'js:development'
