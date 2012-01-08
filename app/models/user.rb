# encoding:utf-8
class User < ActiveRecord::Base
  belongs_to :height
  belongs_to :weight
  has_one :actual_size
  belongs_to :forecast_msize , :foreign_key => "forecast_id"
  belongs_to :forecast_wsize , :foreign_key => "forecast_id"

  module Style
    LOOSE = 'loose' # 宽松
    NORMAL = 'normal' # 标准
    FIT = 'fit' # 合适
    TIGHT = 'tight' # 紧身
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

  # 胸腰差 = 胸围 - 中腰围
  def chest_middle_chest_diff
    chest = self.chest
    middle_chest = self.middle_chest
    diff = chest - middle_chest
    diff
  end

  # 胸围
  def chest
    actual_size = self.actual_size
    actual_size.try(:chest) || forecast_size.chest
  end

  # 中腰围
  def middle_chest
    actual_size = self.actual_size
    actual_size.try(:middle_chest) || forecast_size.middle_chest
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

  # 腰围
  def down_chest
    actual_size = self.actual_size
    actual_size.try(:down_chest) || forecast_size.down_chest
  end

  # 臀围
  def ass
    actual_size = self.actual_size
    actual_size.try(:ass) || forecast_size.ass
  end

  # 横档
  def crosspiece
    actual_size = self.actual_size
    actual_size.try(:crosspiece) || forecast_size.crosspiece
  end

  # 裤长
  def foot
    actual_size = self.actual_size
    actual_size.try(:foot) || forecast_size.foot
  end

  # 领围
  def neck
    actual_size = self.actual_size
    actual_size.try(:neck) || forecast_size.neck
  end

  # 腕围
  def wrist
    actual_size = self.actual_size
    actual_size.try(:wrist) || 0
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