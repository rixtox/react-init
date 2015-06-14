require! gulp

require! '../config'

watch = require 'gulp-watch'

gulp.task 'watch', ['browserSync'], ->
  watch config.html.src, -> gulp.start 'html'
  watch config.sass.src, -> gulp.start 'sass'
