class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user, :through => :posts
  attr_accessible :comment, :comment_date
end
