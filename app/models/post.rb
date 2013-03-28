class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes
  attr_accessible :body, :published_date, :tag, :title, :comments_attributes
  accepts_nested_attributes_for :comments
  validates_presence_of :body, :title
  validates_length_of :title, maximum: 140
  scope :recent, order('created_at desc').limit(4)
end
