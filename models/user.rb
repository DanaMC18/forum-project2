
class User < ActiveRecord::Base
  has_many :topics, class_name: "Topic"
  has_many :comments, class_name: "Comment"
  has_many :likes, class_name: "Like"
  has_many :votes, class_name: "Vote"
end