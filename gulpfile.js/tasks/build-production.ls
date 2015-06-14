require! gulp

require! 'gulp-sequence'

gulp.task 'build:production', (cb) ->
  gulpSequence do
    'clean'
    ['vendor', 'browserify:production', 'html', 'sass']
    cb
