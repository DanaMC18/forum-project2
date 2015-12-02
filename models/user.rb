
class User < ActiveRecord::Base
  has_many :topics
  has_many :comments
  has_many :likes
  has_many :votes
end