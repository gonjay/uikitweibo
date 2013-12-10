#!/bin/env ruby  
# encoding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :avatarSrc, :genderStr, :nickName
  has_many :weibos
  has_many :comments

  def getAvatar
    "http://songsm.u.qiniudn.com/myAvatar.png" unless self.avatarSrc
  end

  def getNickName
    self.email.split("@")[0] unless self.nickName
  end
end
