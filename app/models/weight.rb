# encoding:utf-8
class Weight < ActiveRecord::Base
  validates :value , :presence => { message: '不能为空' }
end
