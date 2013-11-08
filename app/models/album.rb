class Album < ActiveRecord::Base
  attr_accessible :imageUrl, :useType, :user_id, :useFlag

  def useFlagType
    type = ["普通照片","", "形象照片"]
    type[self.useFlag] if self.useFlag && self.useFlag < 3
  end
end
