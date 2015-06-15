require! gulp

require! 'gulp-sequence'

gulp.task 'build:production', (cb) ->
  gulpSequence do
    'clean'
    [
      'sass'
      'html'
      'fonts'
      'vendor'
      'browserify:production'
    ]
    cb
