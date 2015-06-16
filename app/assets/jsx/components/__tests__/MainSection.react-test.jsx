const Component = loadModule();

describe('MainSection', function() {
  it('renders with container class', function() {
    let component = TestUtils.renderIntoDocument(
      <Component />
    );
    expect(component.getDOMNode().className).toEqual('container');
  });
});
