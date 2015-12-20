# hello-react-meteor-livescript
Learning Some React with Proper Meteor Integration (Routing, SSR)

# Plus:
* Use Livescript to remove the JSX hell
* Use _ as helper of React.createElement and makes `null` optional. It could be used directly in Livescript: `_div props, children` or `_ \div, props, children`. Or in Javascript: `_div(props,children)` or `_('div',props,children)`. Inspired from: https://github.com/redbadger/react-isomorphic/issues/5
* Now we have the full power of a powerful functional scripting language and jade-like templating truely unified.

e.g. .jsx
```jsx
  getContent() {
    return <div>
      <a href={FlowRouter.path('/')}>Back</a>
      <h3>{this.data.post.title}</h3>
      <p>{this.data.post.content}</p>
    </div>;
  },
```
becomes .ls:
```livescript
  getContent: ->
    _div do # the following is an array of children
      * _a href: FlowRouter.path('/'), \Back
        _h3 this.data.post.title
        _p this.data.post.content
```

It's a personal choice to use other short variable names like `$` or `dom_`. 

The above approach is a time saver that helps faster flow in quick prototyping. However since React promotes component reusability, considering cross-team code readability, such time-saving syntax might not be everyone's cup of tea.

P.S.: Original tag-name functions like `div`, `a` could be directly used by importing them all to global namespace by: `@ <<< React.DOM` as mentioned here: http://red-badger.com/blog/2014/05/27/using-livescript-with-react/ . Just we need to fill in `null` for elements without props. But having hundreds of global functions like `a`, `br`, `div` etc... might be a bad idea.
