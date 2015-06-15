require! gulp

require! '../config'
require! 'merge-stream'
require! 'gulp-changed'

gulp.task 'fonts', ->
  mergeStream do
    gulp.src config.fonts.src
      .pipe gulpChanged config.fonts.dest
      .pipe gulp.dest config.fonts.dest
