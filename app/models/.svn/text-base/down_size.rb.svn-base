# encoding: utf-8
class DownSize < ActiveRecord::Base
  belongs_to :model
  belongs_to :brand
  belongs_to :item

  module Gender
    M = 1
    W = 2
  end

  M_TYPES = {
    "201" => "休闲裤",
    "202" => "牛仔裤",
    "203" => "西裤",
    "204" => "内裤",
    "205" => "短裤",
    "206" => "运动裤",
    "207" => "泳裤"
  }

  W_TYPES = {
    "301" => "休闲裤",
    "302" => "牛仔裤",
    "303" => "西裤",
    "304" => "内裤",
    "305" => "短裤",
    "306" => "运动裤",
    "307" => "泳裤西裙",
    "308" => "裙子连衣裙",
    "309" => "连脚袜"
  }

  def human_gender
    if gender == Gender::M
      "男"
    else
      "女"
    end
  end

  def human_category
    M_TYPES.merge(W_TYPES)[category_id.to_s]
  end

end
