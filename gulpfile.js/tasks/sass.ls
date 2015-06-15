require! gulp

require! '../config'
require! 'gulp-util'
require! 'gulp-sass'
require! 'gulp-concat'
require! 'browser-sync'
require! 'gulp-sourcemaps'
require! 'gulp-autoprefixer'

gulp.task 'sass', ->
  gulp.src config.sass.src
    .pipe gulpSass config.sass.options
    .on 'error', gulpUtil.log
    .pipe gulpAutoprefixer config.sass.autoprefixer
    .pipe gulpConcat config.sass.file
    .pipe gulp.dest config.sass.dest
    .pipe browserSync.reload do
      once: true
      stream: true
