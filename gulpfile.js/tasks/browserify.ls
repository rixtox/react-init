require! gulp
require! watchify
require! browserify

require! '../config'
require! 'gulp-util'
require! 'gulp-rename'
require! 'browser-sync'

source = require 'vinyl-source-stream'

gulp.task 'browserify:development', (cb) ->
  bundler = watchify do
    browserify do
      config.browserify.dev.src
      config.browserify.dev.options

  bundler.require config.browserify.dev.require
  bundler.transform 'babelify'

  rebundle = ->
    gulpUtil.log 'Bundling with Browserify'

    bundler.bundle!
      .on 'error', gulpUtil.log
      .pipe source config.browserify.dev.file
      .pipe gulp.dest config.browserify.dev.dest
      .pipe browserSync.reload do
        once: true
        stream: true

  bundler.on 'update', rebundle
  rebundle!

gulp.task 'browserify:production', (cb) ->
  gulpUtil.log 'Bundling with Browserify'

  bundler = browserify do
    config.browserify.prod.src
    config.browserify.prod.options

  bundler.require config.browserify.prod.require
  bundler.transform 'babelify'
  bundler.plugin 'minifyify', config.browserify.prod.minifyify

  bundler.bundle!
    .on 'error', gulpUtil.log
    .pipe source config.browserify.prod.file
    .pipe gulp.dest config.browserify.prod.dest
