const React = require('react');
import {Body} from './Body.react';

export const MainSection = React.createClass({
  render() {
    return (
      <div className="main">
        <h1>React Blank Project</h1>
        <Body />
      </div>
    );
  }
});
