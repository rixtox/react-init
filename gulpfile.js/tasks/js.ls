require! gulp

require! '../config'
require! 'gulp-uglify'
require! 'browser-sync'
require! 'gulp-template'

gulp.task do
  'js:development'
  ['sass:development', 'html:development']
  ->
    gulp.src config.js.src
      .pipe gulpTemplate config.js.params
      .pipe gulp.dest config.js.dest
      .pipe browserSync.reload do
        once: true
        stream: true

gulp.task do
  'js:production'
  ['sass:production', 'html:production']
  ->
    gulp.src config.js.src
      .pipe gulpTemplate config.js.params
      .pipe gulpUglify!
      .pipe gulp.dest config.js.dest
