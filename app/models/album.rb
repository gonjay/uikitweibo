class Album < ActiveRecord::Base
  attr_accessible :imageUrl, :useType, :user_id
end
