class Like < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  belongs_to :author, :through => :post
  attr_accessible :value
end
