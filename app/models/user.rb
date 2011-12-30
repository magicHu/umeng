class User < ActiveRecord::Base
  
  validates :nickname, :presence => true, :uniqueness => true
  validates :imsi, :presence => true
  
  
  has_many :like_posts
  has_many :unlike_posts
  
end
