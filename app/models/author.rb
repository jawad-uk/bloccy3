class Author < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :twitter, :website
end
