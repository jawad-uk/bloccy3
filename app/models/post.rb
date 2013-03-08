class Post < ActiveRecord::Base
  belongs_to :author
  attr_accessible :body, :published_date, :tag, :title
  has_many :comments, :likes
end
