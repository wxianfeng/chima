# encoding:utf-8
class AddColumnStyleToUsers < ActiveRecord::Migration
  def change
    add_column :users , :style , :string , :default => "thin"
  end
end
