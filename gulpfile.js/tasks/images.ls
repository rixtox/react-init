require! gulp

require! '../config'
require! 'browser-sync'
require! 'gulp-changed'
require! 'gulp-imagemin'

gulp.task 'images', ->
  gulp.src config.images.src
    .pipe gulpChanged config.images.dest
    .pipe gulpImagemin!
    .pipe gulp.dest config.images.dest
    .pipe browserSync.reload do
      once: true
      stream: true
