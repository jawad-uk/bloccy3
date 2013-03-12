class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :twitter, :website, :author
  has_many :comments
  has_many :likes
  has_many :posts
end
