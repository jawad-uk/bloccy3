class Post < ActiveRecord::Base
  attr_accessible :body, :title, :tags_attributes

  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :tags, :dependent => :destroy
  
  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :tags
  
  validates_presence_of :body, :title
  validates_length_of :title, maximum: 140
  
  scope :recent, order('created_at desc').limit(4)

  # before_destroy :set_deleted_flag
end
