# coding:utf-8
class AddColumnHeightToUsers < ActiveRecord::Migration
  def change
    add_column :users , :height , :integer
    add_column :users , :weight , :decimal , :precision => 10, :scale => 1
  end
end
