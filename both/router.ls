FlowRouter.route  \/,
  name: \home
  action: ->
    ReactLayout.render BlogLayout,
      content: _ PostList

# FlowRouter.route("/", {
#   name: "home",
#   action() {
#     ReactLayout.render(BlogLayout, {
#       content: <PostList />
#     });
#   }
# });

FlowRouter.route \/post/:_id,
  name: \post
  action: (params)->
    ReactLayout.render BlogLayout,
      content: _ PostPage, { _id: params._id }

# FlowRouter.route('/post/:_id', {
#   name: 'post',
#   action(params) {
#     ReactLayout.render(BlogLayout, {
#       content: <PostPage _id={params._id} />
#     });
#   }
# });
