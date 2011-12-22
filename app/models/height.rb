# encoding:utf-8
class Height < ActiveRecord::Base
  validates :value , :presence => { message: '不能为空' }

  default_scope :order=>"value ASC"
end
