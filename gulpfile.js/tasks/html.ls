require! gulp

require! '../config'
require! 'gulp-template'

gulp.task 'html', ['sass'], ->
  gulp.src config.html.src
    .pipe gulpTemplate config.html.params
    .pipe gulp.dest config.html.dest
