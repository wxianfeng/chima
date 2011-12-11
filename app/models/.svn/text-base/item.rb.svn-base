# encoding:utf-8
class Item < ActiveRecord::Base
  belongs_to :brand
  validates :name , :presence => { message: '不能为空' }

  module Category
    UP = 'up' # 上衣
    DOWN = 'down' # 下衣
  end

  def human_category
    if category == Category::UP
      "上衣"
    else
      "下衣"
    end
  end

end
