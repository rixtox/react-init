import React from 'react/addons';
import Body from './Body.react';

export default React.createClass({
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
