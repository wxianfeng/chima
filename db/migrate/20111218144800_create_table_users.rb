# encoding:utf-8
class CreateTableUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer :visitor_id
      t.string :visitor_nick
      t.timestamps
    end
  end

  def down
  end
end
