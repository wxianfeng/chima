class AddColumnCategoryToUpSizes < ActiveRecord::Migration
  def change
    add_column :up_sizes , :category , :string
  end
end
