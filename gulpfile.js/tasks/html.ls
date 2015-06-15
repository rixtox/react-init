require! gulp

require! '../config'
require! 'browser-sync'
require! 'gulp-template'

buildHTML = ->
  gulp.src config.html.src
    .pipe gulpTemplate config.html.params
    .pipe gulp.dest config.html.dest
    .pipe browserSync.reload do
      once: true
      stream: true

gulp.task do
  'html:development'
  ['sass:development']
  buildHTML

gulp.task do
  'html:production'
  ['sass:production']
  buildHTML
