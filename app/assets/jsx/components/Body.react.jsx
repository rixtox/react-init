const React = require('react');


export const Body = React.createClass({
  getClassName() {
    return 'foo';
  },

  render() {
    const x = 'x';

    return (
      <div className={`${x} ${this.getClassName()} bar`}>
        Hello, world!
      </div>
    );
  }
});
