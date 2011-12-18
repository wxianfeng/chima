# coding:utf-8
class AddColumnGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users , :gender , :integer , :default => 0 # 0 : 男
  end
end
