require! gulp

require! '../config'

gulp.task 'vendor', ->
  gulp.src config.vendor.src
    .pipe gulp.dest config.vendor.dest
