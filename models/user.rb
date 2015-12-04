require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password
  has_many :topics
  has_many :comments
  has_many :likes
  has_many :votes
  validates :username, uniqueness: true

  # def default_pic
  #   if profile_pic.present? == false
  #     self.profile_pic = 'http://img4.wikia.nocookie.net/__cb20130109211938/the-league-of-utter-disaster-chaos-and-insanity/images/5/52/Derp.png'
  #   end
  #   self.profile_pic :thumbnail
  # end

end