
class Topic < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  has_many :comments, class_name: "Comment"
  has_many :votes, class_name: "Vote"
end