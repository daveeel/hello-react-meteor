@Posts = new Meteor.Collection 'posts'
if Meteor.isServer
  Posts.remove {}
  Posts.insert do
    _id: '1', title: 'Better Meteor React', content: 'Yeah! Use Meteor + React + Livescript'
  Posts.insert do
    _id: '2', title: 'Get rid of JSX', content: 'Do we still need JSX with Livescript? Decide for yourself!'
  Posts.insert do
    _id: '3', title: 'My Secret Post', category: 'private', content: 'How do you find out this post? Clever!'
  Posts.insert do
    _id: '4', title: 'Not a Secret Post', content: 'This is an open post'

# Posts = new Meteor.Collection('posts');
# if(Meteor.isServer) {
#   Posts.remove({});
#   Posts.insert({
#     _id: 'one', title: 'New Meteor Rocks', content: 'Yeah! Check our Meteor Blog for more!'
#   });
#   Posts.insert({_id: 'two', title: 'MeteorHacks + Kadira => Kadira++', content: 'Something new soon.'});
#   Posts.insert({_id: 'three', title: 'My Secret Post', category: 'private'});
# }
