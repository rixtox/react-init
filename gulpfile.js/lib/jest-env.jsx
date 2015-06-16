jest.autoMockOff();

const React = require('react/addons');
const { TestUtils } = React.addons;

loadModule = function(filename) {
  if (!filename)
    return loadModule(__filename);
  var path = require('path');
  return require(
    path.resolve(
      path.dirname(filename),
      '..',
      path.basename(filename,
        '-test' + path.extname(filename))
    )
  );
}

