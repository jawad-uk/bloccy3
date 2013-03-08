class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :twitter, :website
  has_many :comments, :likes
end
