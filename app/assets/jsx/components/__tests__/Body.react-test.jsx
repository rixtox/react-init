const Component = loadModule();

describe('Body', function() {
  it('toggles image view', function() {
    let component = TestUtils.renderIntoDocument(
      <Component />
    );

    let button = TestUtils.findRenderedDOMComponentWithTag(
      component, 'button'
    );

    expect(
      button.props.children
    ).toEqual('Show Image');

    TestUtils.Simulate.click(button);

    expect(
      button.props.children
    ).toEqual('Hide Image');

    let img = TestUtils.findRenderedDOMComponentWithTag(
      component, 'img'
    );

    expect(img.props.src).toEqual('/assets/images/browserify.png');

    TestUtils.Simulate.click(button);

    expect(
      button.props.children
    ).toEqual('Show Image');

    expect(
      TestUtils.scryRenderedDOMComponentsWithTag(
        component, 'img'
      ).length
    ).toEqual(0);
  });
});
