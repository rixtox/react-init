require! gulp

require! '../config'
require! 'gulp-changed'

gulp.task 'vendor', ->
  gulp.src config.vendor.src
    .pipe gulpChanged config.vendor.dest
    .pipe gulp.dest config.vendor.dest
