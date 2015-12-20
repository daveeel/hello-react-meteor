# hello-react-meteor-livescript
Learning Some React with Proper Meteor Integration (Routing, SSR)

# Plus:
* Use Livescript to replace JSX hell
* Use _ as helper of React.createElement and makes `null` optional. It could be used directly like `_div props children` or `_ div props children`
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

It's personal choice to use other short variable names like `$` or `dom_`. Sure enough, original tag-name functions like `div`, `a` could always be used, just we need to fill in `null` for elements without props.

This approach is a time saver that helps faster flow in quick prototyping. However since React promotes component reusability, considering cross-team code readability, such time-saving syntax might not be necessarily a good fit for seriously maintained components.
