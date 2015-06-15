require! gulp

require! 'gulp-sequence'

gulp.task 'build:development', (cb) ->
  gulpSequence do
    'clean'
    [
      'fonts'
      'vendor'
      'sass:development'
      'html:development'
      'browserify:development'
    ]
    [
      'watch'
      'browserSync'
    ]
    cb

gulp.task 'build:production', (cb) ->
  gulpSequence do
    'clean'
    [
      'fonts'
      'vendor'
      'sass:production'
      'html:production'
      'browserify:production'
    ]
    cb
