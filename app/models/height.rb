# encoding:utf-8
class Height < ActiveRecord::Base
  validates :value , :presence => { message: '不能为空' }
end
