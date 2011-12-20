# encoding:utf-8
class CreateHeights < ActiveRecord::Migration
  def change
    create_table :heights do |t|
      t.integer :value

      t.timestamps
    end
  end
end
