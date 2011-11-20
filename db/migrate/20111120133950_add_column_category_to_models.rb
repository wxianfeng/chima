class AddColumnCategoryToModels < ActiveRecord::Migration
  def change
    remove_column :up_sizes , :category

    add_column :models , :category , :string
  end
end
