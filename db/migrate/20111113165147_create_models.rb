class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.integer :brand_id

      t.timestamps
    end
    add_index :models , :brand_id
  end
end
