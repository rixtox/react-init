require! gulp

require! '../config'
require! 'gulp-util'
require! 'gulp-ruby-sass'
require! 'gulp-minify-css'
require! 'gulp-rename'
require! 'browser-sync'
require! 'gulp-sourcemaps'
require! 'gulp-autoprefixer'

gulp.task 'sass:development', ->
  gulpRubySass config.sass.src, config.sass.options
    .on 'error', gulpUtil.log
    .pipe gulpAutoprefixer config.sass.autoprefixer
    .pipe gulpMinifyCss config.sass.minifycss
    .pipe gulpRename config.sass.file
    .pipe gulp.dest config.sass.dest
    .pipe browserSync.reload do
      once: true
      stream: true

gulp.task 'sass:production', ->
  gulpRubySass config.sass.src, config.sass.options
    .on 'error', gulpUtil.log
    .pipe gulpAutoprefixer config.sass.autoprefixer
    .pipe gulpMinifyCss config.sass.minifycss
    .pipe gulpRename config.sass.file
    .pipe gulp.dest config.sass.dest
