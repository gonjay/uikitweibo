#!/bin/env ruby  
# encoding: utf-8
class Album < ActiveRecord::Base
  attr_accessible :imageUrl, :useType, :user_id, :useFlag

  def useFlagType
    type = ["普通照","", "形象照"]
    type[self.useFlag] if self.useFlag && self.useFlag < 3
  end
end
