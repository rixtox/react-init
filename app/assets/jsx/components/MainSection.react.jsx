const React = require('react');
import {Body} from './Body.react';

export const MainSection = React.createClass({
  getClassName() {
    return 'container';
  },
  
  render() {
    return (
      <div className={this.getClassName()}>
        <h1>React Blank Project</h1>
        <Body />
      </div>
    );
  }
});
