class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :comment, :comment_date
end
