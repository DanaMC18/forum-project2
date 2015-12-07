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
    password: 'password123',
    profile_pic: 'https://s-media-cache-ak0.pinimg.com/236x/ac/27/0a/ac270a6e86b61cbfb4ade530875ec7a6.jpg'
  }
]

User.create(users)


topics = [
  {
    title: 'Welcome', 
    content: 'Welcome to Fantastic Peeps and Where to Find Them! (hint...its here...)  
    This forum was built to bring the fantastic fans of Harry Potter together into a community of conversation, debate, and mutual interest.
    It is still a work in progress so please, be kind/gentle. And feel free to reach out with any suggestions or discovered glitches (there should be none) 
    
    -- Dana',
    created_at: DateTime.now,
    user_id: 1
  },
  {
    title: 'About',
    content: 'This forum is a full-stack web application built by me, Dana Czinsky.  
    HTML, CSS, JavaScript/JQuery, Ruby, Sinatra, SQL/ActiveRecord were utilized in the making of this forum. 
    All text on this forum is Markdown (https://en.wikipedia.org/wiki/Markdown#Example) compatible',
    created_at: DateTime.now,
    user_id: 1
  }
]

Topic.create(topics)


comments = [
  {
    content: 'Thanks for making this sweet site, Dana!',
    created_at: DateTime.now,
    user_id: 1,
    topic_id: 1
  },
  {
    content: '@D-Money yeah this forum is the bee\'s knees!',
    created_at: DateTime.now,
    user_id: 1,
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
  }
]

Vote.create(votes)




















