class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :bio, :name, :twitter, :website, :author, :posts 
  has_many :comments
  has_many :comments_from_authored_posts, :class_name => 'Comment', :through => :posts
  has_many :posts
  validates_presence_of :email, :password
  # scope :recently_active, User.comments.order("created_at DESC")
  # after_create : send_email
  # before_save :encrypt_password
end


