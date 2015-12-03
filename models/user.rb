require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password
  has_many :topics
  has_many :comments
  has_many :likes
  has_many :votes
  validates :username, uniqueness: true
end