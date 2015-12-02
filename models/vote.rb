
class Vote < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :topic, class_name: "Topic"
end