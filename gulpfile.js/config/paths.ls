require! path

{join, resolve} = path

base = resolve __dirname, '../../'
src =
  root: join base, 'app'
src.assets = join src.root, 'assets'
src.js = join src.assets, 'js'
src.jsx = join src.assets, 'jsx'
src.sass = join src.assets, 'sass'
src.fonts = join src.assets, 'fonts'
src.images = join src.assets, 'images'

dest =
  root: join base, 'public'
dest.assets = join dest.root, 'assets'
dest.js = join dest.assets, 'js'
dest.css = join dest.assets, 'css'
dest.fonts = join dest.assets, 'fonts'
dest.images = join dest.assets, 'images'
dest.vendor = join dest.assets, 'vendor'

node_modules = join base, 'node_modules'
bower = join base, 'bower_components'

module.exports = {
  src
  dest
  base
  bower
  node_modules
}
