class Weibo < ActiveRecord::Base
  attr_accessible :content, :favorite, :user_id
  belongs_to :user;
end