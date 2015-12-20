@BlogLayout = React.createClass do
  render: ->
    _div do
      * _div className: \navigation,
          _a href:FlowRouter.path('/'), \Home
        _h1 'My Blog'
        this.props.content

/*
BlogLayout = React.createClass({
  render() {
    return <div>
      <div className="navigation">
        <a href={FlowRouter.path('/')}>Home</a>
      </div>
      <h1> My Blog </h1>
      {this.props.content}
    </div>;
  }
});
*/
