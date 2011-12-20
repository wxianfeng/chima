# encoding:utf-8
class ForecastWsize < ActiveRecord::Base
  belongs_to :height
  belongs_to :weight

  validates :height , :presence => { message: '不能为空' }
  validates :weight , :presence => { message: '不能为空' }

end
