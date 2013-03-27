class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :twitter, :website, :author, :posts
  has_many :comments
  has_many :comments_from_authored_posts, :class_name => 'Comment', :through => :posts
  has_many :posts
end
