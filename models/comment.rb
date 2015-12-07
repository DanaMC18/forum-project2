
class Comment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes

  def like_count
    self.likes.count
  end
  
  def pretty_time
    self.created_at.strftime('%b %d, %Y')
  end

end