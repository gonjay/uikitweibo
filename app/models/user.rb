#!/bin/env ruby  
# encoding: utf-8
class User < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :avatarSrc, :genderStr, :nickName, :photo
  has_many :weibos
  has_many :comments

  def getAvatar
    # avatarSrc.present? ? avatarSrc : "http://songsm.u.qiniudn.com/myAvatar.png"   
    photo_url(:avatar).present? ? photo_url(:avatar) : "http://songsm.u.qiniudn.com/myAvatar.png"
  end

  def getNickName
    nickName.present? ? nickName : email.split("@")[0]
  end
end
