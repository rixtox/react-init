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
bower install
npm install
```

After the installation, run `gulp` to compile and view the page.

For tests, run `npm test`.

## Notes

Since [Jest](https://facebook.github.io/jest) does not support Node.js `0.12` yet, you have to switch to `0.10` for the tests to work. If you have [nvm](https://github.com/creationix/nvm) installed, just do `nvm use` to switch to the right version.
