# Taken from:
# https://github.com/redbadger/react-isomorphic/issues/5

{each, keys} = prelude

# Define global _ for React.createElement.
# Also makes 'null' parameter optional
# For native React elements _br! == _ 'br' (ls)
# For your own elements use _ 'ComponentName'
@_ = (element, props-or-children, children-if-props) ->
  if (props-or-children? and props-or-children instanceof Array) or not (props-or-children instanceof Object)
    props = null
    children = props-or-children
  else
    props = props-or-children
    children = children-if-props
  React.create-element element, props, children

# Object.keys(React.DOM).forEach (element-name) !->
#   @"_#{element-name}" = (props, children) ->
#     _ element-name, props, children

React.DOM |> keys |> each (tag-name)->
  @"_#{tag-name}" = (props, children) ->
    _ tag-name, props, children
