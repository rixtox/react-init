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
      config.browserifyDevelopment.src
      config.browserifyDevelopment.options

  bundler.require config.browserifyDevelopment.require
  bundler.transform 'babelify'

  rebundle = ->
    gulpUtil.log 'Bundling with Browserify'

    bundler.bundle!
      .on 'error', gulpUtil.log
      .pipe source config.browserifyDevelopment.file
      .pipe gulp.dest config.browserifyDevelopment.dest
      .pipe browserSync.reload do
        once: true
        stream: true

  bundler.on 'update', rebundle
  rebundle!
