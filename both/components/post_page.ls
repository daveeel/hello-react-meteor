@PostPage = React.createClass do
  mixins: [ReactMeteorData]
  getMeteorData: ->
    const handle = Meteor.subscribe \singlePost, @props._id
    const data = {}
    if handle.ready!
      data.post = Posts.findOne {_id: @props._id}
    data
  getContent: ->
    _div do
      * _a href: FlowRouter.path('/'), \Back
        _h3 this.data.post.title
        _p this.data.post.content
  render: ->
    if @data.post
      @getContent!
    else
      _div 'loading...'

/*
PostPage = React.createClass({
  mixins: [ReactMeteorData],
  getMeteorData() {
    const handle = Meteor.subscribe('singlePost', this.props._id);
    const data = {};
    if(handle.ready()) {
      data.post = Posts.findOne({_id: this.props._id});
    }

    return data;
  },
  getContent() {
    return <div>
      <a href={FlowRouter.path('/')}>Back</a>
      <h3>{this.data.post.title}</h3>
      <p>{this.data.post.content}</p>
    </div>;
  },
  render() {
    return (this.data.post)? this.getContent() : <div>loading...</div>;
  }
});
*/
