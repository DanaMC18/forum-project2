
class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  def vote_num 
    self.votes.count
  end

  def comment_count
    self.comments.count
  end

  def self.topics_ordered
    all.sort {|x,y| y.vote_num <=> x.vote_num}
  end

  def pretty_time
    self.created_at.strftime('%b %d, %Y')
  end
end