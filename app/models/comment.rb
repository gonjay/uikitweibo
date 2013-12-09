class Comment < ActiveRecord::Base
  attr_accessible :content, :user_id, :weibo_id
end
