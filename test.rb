require_relative "db/config.rb"

User.destroy_all
Topic.destroy_all
Comment.destroy_all
Like.destroy_all
Vote.destroy_all

# dana = User.create({name: "Dana", username: "DanaMC18"})
# bananas = Topic.create({title: "bananas, amirite?"})

# puts dana.name

# bananas.update(user_id: dana.id)
# bananas.user_id
# dana.topics
# dana.topics.first.title


# default profile pics
# markdown (redcarpet gem) 
# wire frames
# still logging in with incorrect password....WHY!?
