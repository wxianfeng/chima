# encoding:utf-8
class AddColumnItemIdToUpSizes < ActiveRecord::Migration
  def change
    add_column :up_sizes , :item_id , :integer
    add_column :down_sizes , :item_id , :integer
  end
end
