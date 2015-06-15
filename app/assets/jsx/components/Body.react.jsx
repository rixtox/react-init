const React = require('react');


export const Body = React.createClass({
  render() {
    return (
      <div>
        <span>Hello </span>
        <i className='fa fa-star'></i> 
        <i className='glyphicon glyphicon-star-empty'></i> 
        <i className='fa fa-star'></i> 
        <span> world!</span>
        <br/>
        <button type="button" className="btn btn-default">OK</button>
      </div>
    );
  }
});
