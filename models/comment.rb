
class Comment < ActiveRecord::Base
  belongs_to :topic, class_name: "Topic"
  belongs_to :user, class_name: "User"
  has_many :likes, class_name: "Like"
end