require_relative 'config'

User.destroy_all
Topic.destroy_all
Comment.destroy_all
Like.destroy_all
Vote.destroy_all

users = [
  {
    name: 'Dana', 
    username: 'DanaMC18', 
    profile_pic: 'https://s-media-cache-ak0.pinimg.com/236x/ac/27/0a/ac270a6e86b61cbfb4ade530875ec7a6.jpg'
  },
  {
    name: 'D$',
    username: 'D-Money',
    profile_pic: 'http://images.clipartpanda.com/green-dollar-sign-clipart-4T9gK5qTE.jpeg'
  }
]

User.create(users)


topics = [
  {
    title: 'Welcome', 
    content: 'Welcome to Fantastic Peeps and Where to Find Them! (hint...its here)',
    created_at: DateTime.new,
    user_id: 1
  }
]

Topic.create(topics)


comments = [
  {
  content: 'Thanks for making this sweet site, Dana!',
  created_at: DateTime.new,
  user_id: 2,
  topic_id: 1
  }
]

Comment.create(comments)


likes = [
  {
    user_id: 2,
    comment_id: 1
  }
]

Like.create(likes)


votes = [
  {
    user_id: 1,
    topic_id: 1
  },
  {
    user_id: 2,
    topic_id: 1
  }
]

Vote.create(votes)




















