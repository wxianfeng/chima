# encoding:utf-8
class AddColumnForecastIdToUsers < ActiveRecord::Migration
  def change
    add_column :users , :forecast_id , :integer
  end
end
