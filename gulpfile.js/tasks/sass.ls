require! gulp

require! '../config'
require! 'gulp-util'
require! 'gulp-sass'
require! 'gulp-rename'
require! 'browser-sync'
require! 'gulp-sourcemaps'
require! 'gulp-autoprefixer'

gulp.task 'sass', ->
  gulp.src config.sass.src
    .pipe gulpSourcemaps.init!
    .pipe gulpSass config.sass.options
    .on 'error', gulpUtil.log
    .pipe gulpSourcemaps.write!
    .pipe gulpAutoprefixer config.sass.autoprefixer
    .pipe gulpRename config.sass.file
    .pipe gulp.dest config.sass.dest
    .pipe browserSync.reload do
      once: true
      stream: true
