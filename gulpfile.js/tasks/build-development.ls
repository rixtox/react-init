require! gulp

require! 'gulp-sequence'

gulp.task 'build:development', (cb) ->
  gulpSequence do
    'clean'
    [
      'sass'
      'html'
      'fonts'
      'vendor'
      'browserify:development'
    ]
    [
      'watch'
      'browserSync'
    ]
    cb
