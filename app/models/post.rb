class Post < ActiveRecord::Base
  belongs_to :author
  attr_accessible :body, :published_date, :tag, :title, :author_id
  has_many :comments
  has_many :likes
end
