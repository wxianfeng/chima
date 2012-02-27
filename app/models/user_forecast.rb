# encoding:utf-8
class UserForecast < ActiveRecord::Base
  belongs_to :user

  def self.update_data(current_user,category_id,column,value)
    uf = UserForecast.where(:user_id=>current_user.id,:style=>current_user.style,:category_id=>category_id).last
    if uf.nil?
      uf = UserForecast.create({ user_id: current_user.id,style: current_user.style,category_id: category_id })
    end
    if uf.send(column) != value
      uf.send("#{column}=",value)
      uf.save
    end
  end

end