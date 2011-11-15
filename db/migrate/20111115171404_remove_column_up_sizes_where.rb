class RemoveColumnUpSizesWhere < ActiveRecord::Migration
  def up
    remove_column :up_sizes , :where
    remove_column :down_sizes , :where
  end

  def down
  end
end
