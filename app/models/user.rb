class User < ActiveRecord::Base
  attr_accessible :avatarSrc, :genderStr, :nickName
  has_many :weibos
  has_many :comments
end
