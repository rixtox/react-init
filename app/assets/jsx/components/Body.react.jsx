import React from 'react/addons';

export default React.createClass({
  getInitialState() {
    return {
      showImage: false
    };
  },

  toggleImage() {
    this.setState({
      showImage: !this.state.showImage
    });
  },

  render() {
    var buttonText,
        imageView = null;
    if (this.state.showImage) {
      buttonText = 'Hide Image';
      imageView = <div className="image-view">
                    <img src="/assets/images/browserify.png"/>
                  </div>;
    } else {
      buttonText = 'Show Image';
    }
    return (
      <div>
        <div className="hello-world">
          <span>Hello </span>
          <i className='fa fa-star'></i> 
          <i className='glyphicon glyphicon-star-empty'></i> 
          <i className='fa fa-star'></i> 
          <span> world!</span>
        </div>
        <div>
          <button
            type="button"
            className="btn btn-default"
            onClick={this.toggleImage}>
              {buttonText}
          </button>
        </div>
        {imageView}
      </div>
    );
  }
});
