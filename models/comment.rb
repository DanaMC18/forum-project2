
class Comment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes

  def pretty_time
    self.created_at.strftime('at %I:%M%p')
  end
  
end