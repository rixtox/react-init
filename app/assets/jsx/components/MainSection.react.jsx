const React = require('react');
import {Body} from './Body.react.jsx';

export const MainSection = React.createClass({
  render() {
    return (
      <div>
        <h1>Example of React with ES6 and Browserify</h1>
        <Body />
      </div>
    );
  }
});
