# encoding:utf-8
class ChangeColumnUsersHeight < ActiveRecord::Migration
  def up
    rename_column :users , :height , :height_id
    rename_column :users , :weight , :weight_id
    change_column :users , :weight_id , :integer
  end

  def down
  end
end
