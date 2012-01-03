# encoding:utf-8
class User < ActiveRecord::Base
  belongs_to :height
  belongs_to :weight
  has_one :actual_size
  belongs_to :forecast_msize
  belongs_to :forecast_wsize

  module Style
    LOOSE = 'loose' # 宽松
    NORMAL = 'normal' # 标准
    SUIT = 'suit' # 合适
    THIN = 'thin' # 紧身
  end

  def self.find_or_create(visitor)
    visitor_id = visitor[0].split(/=/)[1]
    visitor_nick = visitor[1].split(/=/)[1]
    user = find_by_visitor_id(visitor_id)
    if user.nil?
      user = User.new({ visitor_id: visitor_id,visitor_nick: visitor_nick })
      user.save
    end
    user
  end

  def chest_down_chest_diff
    actual_size = self.actual_size
    chest = self.chest
    down_chest = actual_size.down_chest || forecast_size.down_chest
    diff = chest - down_chest
    diff
  end

  # 胸围
  def chest
    actual_size = self.actual_size
    actual_size.try(:chest) || forecast_size.chest
  end

  # 腰围
  def down_chest
    actual_size = self.actual_size
    actual_size.try(:down_chest) || forecast_size.down_chest
  end

  # 肩宽
  def shoulder
    actual_size = self.actual_size
    actual_size.try(:shoulder) || forecast_size.shoulder
  end

  # 袖长
  def sleeve
    actual_size = self.actual_size
    actual_size.try(:sleeve) || forecast_size.sleeve
  end

  def forecast_size
    fs = if self.gender == 0
      self.forecast_msize
    else
      self.forecast_wsize
    end
    fs
  end

end