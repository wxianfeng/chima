# encoding:utf-8
class User < ActiveRecord::Base
  belongs_to :height
  belongs_to :weight
  has_one :actual_size

  module Style
    THIN = 'thin' # 瘦身
    NORMAL = 'normal' # 普通
    LOOSE = 'loose' # 宽松
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

end