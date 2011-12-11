class CreateSizesNew < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :brand_id
      t.string :name
      t.string :category

      t.timestamps
    end
    add_index :sizes , :brand_id
  end
end
