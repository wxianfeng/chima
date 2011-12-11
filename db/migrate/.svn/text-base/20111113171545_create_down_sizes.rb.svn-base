class CreateDownSizes < ActiveRecord::Migration
  def change
    create_table :down_sizes do |t|
      t.integer :chima_id
      t.decimal :chest , :precision => 10 , :scale => 1
      t.decimal :ass, :precision => 10 , :scale => 1
      t.decimal :leng, :precision => 10 , :scale => 1
      t.decimal :total, :precision => 10 , :scale => 1
      t.decimal :crosspiece, :precision => 10 , :scale => 1
      t.decimal :before_weaves, :precision => 10 , :scale => 1
      t.decimal :back_weaves, :precision => 10 , :scale => 1
      t.decimal :knee, :precision => 10 , :scale => 1
      t.decimal :kukou, :precision => 10 , :scale => 1
      t.decimal :weight, :precision => 10 , :scale => 1

      t.timestamps
    end
    add_index :down_sizes , :chima_id
  end
end
