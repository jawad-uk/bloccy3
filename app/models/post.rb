class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes
  attr_accessible :body, :published_date, :tag, :title, :comments_attributes
  accepts_nested_attributes_for :comments

end
