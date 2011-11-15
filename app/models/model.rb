# encoding:utf-8
class Model < ActiveRecord::Base
  belongs_to :brand
  validates :name , :presence => { message: "不能为空" }
end
