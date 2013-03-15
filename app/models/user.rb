class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :twitter, :website, :author
  has_many :comments, :through => :posts
  has_many :likes, :through => :posts
  has_many :posts
end
