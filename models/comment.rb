
class Comment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes

  def like_count
    self.likes.count
  end

  def pretty_time
    self.created_at.strftime('%A, %d %b %Y %l:%M %p')
  end
  
end