class Comment < ActiveRecord::Base
  attr_accessible :content, :user_id, :weibo_id
  belongs_to :user
  belongs_to :weibo
end
