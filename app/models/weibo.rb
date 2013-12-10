class Weibo < ActiveRecord::Base
  attr_accessible :content, :favorite, :user_id
  validates_presence_of :user_id, :favorite, :content
  belongs_to :user
  has_many :comments
end
