require! gulp

require! 'gulp-sequence'

gulp.task 'build:development', (cb) ->
  gulpSequence do
    'clean'
    ['vendor', 'browserify:development', 'html', 'sass']
    ['watch', 'browserSync']
    cb
