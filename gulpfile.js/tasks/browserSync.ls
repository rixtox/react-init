require! gulp

require! '../config'
require! 'browser-sync'

startServer =  ->
  browserSync config.browserSync

gulp.task 'server', startServer
gulp.task 'browserSync', startServer
