class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :brand_id
      t.integer :gender
      t.integer :where
      t.integer :category_id
      t.integer :model_id

      t.timestamps
    end
    add_index :sizes , :brand_id
    add_index :sizes , :category_id
    add_index :sizes , :model_id
  end
end
