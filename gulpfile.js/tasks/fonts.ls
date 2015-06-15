require! gulp

require! '../config'
require! 'merge-stream'

gulp.task 'fonts', ->
  mergeStream do
    gulp.src config.fonts.src
      .pipe gulp.dest config.fonts.dest
