# encoding:utf-8
class CreateTableActualSizes < ActiveRecord::Migration
  def up
    create_table :actual_sizes do |t| # 实际尺寸
      t.integer :user_id
      t.decimal :chest , :precision => 10 , :scale => 2
      t.decimal :middle_chest , :precision => 10 , :scale => 2
      t.decimal :shoulder , :precision => 10 , :scale => 2
      t.decimal :sleeve , :precision => 10 , :scale => 2
      t.decimal :neck , :precision => 10 , :scale => 2
      t.decimal :arm , :precision => 10 , :scale => 2
      t.decimal :wrist , :precision => 10 , :scale => 2
      t.decimal :down_chest , :precision => 10 , :scale => 2
      t.decimal :ass , :precision => 10 , :scale => 2
      t.decimal :crosspiece , :precision => 10 , :scale => 2
      t.decimal :foot , :precision => 10 , :scale => 2
      t.decimal :knee , :precision => 10 , :scale => 2

      t.timestamps
    end
  end

  def down
  end
end
