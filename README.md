# React Blank Project

[ ![Codeship Status for rixtox/react-init](https://codeship.com/projects/e2157de0-f674-0132-b10e-4a20144c2bb9/status?branch=master)](https://codeship.com/projects/86071)

Initial project for React web application development.

## Features

* Gulp rich configuration
* Browser-Sync livereload
* ES6 support
* SASS support
* Dependency CDN fallbacks
* FontAwesome
* Bootstrap

## Installation

```
npm install
npm install -g gulp bower
bower install
gem install sass
```

## Usage

The build pipeline generates static files under `public` folder.

### Development

```
gulp
```

A [Browsersync](http://www.browsersync.io) server is created at [http://localhost:3000](http://localhost:3000).

The pipeline will watch all your source code changes, and automatically rebuild and reload your browsers.

### Production

```
gulp build:production
```

### Test

```
npm test
```

## Notes

Since [Jest](https://facebook.github.io/jest) does not support Node.js `0.12` yet, you have to switch to `0.10` for the tests to work. If you have [nvm](https://github.com/creationix/nvm) installed, just do `nvm use` to switch to the right version.
