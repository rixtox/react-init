require! gulp
require! browserify

require! '../config'
require! 'gulp-util'
require! 'gulp-rename'

source = require 'vinyl-source-stream'

gulp.task 'browserify:production', (cb) ->
  gulpUtil.log 'Bundling with Browserify'

  bundler = browserify do
    config.browserifyProduction.src
    config.browserifyProduction.options

  bundler.require config.browserifyProduction.require
  bundler.transform 'babelify'
  bundler.plugin 'minifyify', config.browserifyProduction.minifyify

  bundler.bundle!
    .on 'error', gulpUtil.log
    .pipe source config.browserifyProduction.file
    .pipe gulp.dest config.browserifyProduction.dest
