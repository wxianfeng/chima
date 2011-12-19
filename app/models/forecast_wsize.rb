# encoding:utf-8
class ForecastWsize < ActiveRecord::Base

  validates :height , :presence => { message: '不能为空' }
  validates :weight , :presence => { message: '不能为空' }

end
