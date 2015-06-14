require! del
require! gulp

require! '../config'

gulp.task 'clean', (cb) ->
  del do
    [
      config.paths.dest.root
    ]
    cb
