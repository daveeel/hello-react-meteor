# hello-react-meteor-livescript
Learning Some React with Proper Meteor Integration (Routing, SSR)

# Plus:
* Use Livescript to replace JSX hell
* Use _ as helper of React.createElement and makes 'null' optional
* Now we have the full power of Livescript with easy buildin templating like Jade.

e.g.
~~~
  getContent() {
    return <div>
      <a href={FlowRouter.path('/')}>Back</a>
      <h3>{this.data.post.title}</h3>
      <p>{this.data.post.content}</p>
    </div>;
  },
~~~
is now:
~~~
  getContent: ->
    _div do
      * _a href: FlowRouter.path('/'), \Back
        _h3 this.data.post.title
        _p this.data.post.content
~~~
