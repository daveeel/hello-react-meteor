# hello-react-meteor-livescript
Learning Some React with Proper Meteor Integration (Routing, SSR)

# Plus:
* Use Livescript to replace JSX hell
* Use _ as helper of React.createElement and makes 'null' optional. It could be used directly like ~~~ _div ~~~ or ~~~ _ div ~~~
* Now we have the full power of Livescript, and the jade like syntax suger is free.

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

Sure it's your choice to use other short variable names like '$' or 'dom_'.

This approach is a time saver and helps you to think faster for quick prototyping. Since React promotes component reusability, such time-saving syntax is not necessary for serious components.
