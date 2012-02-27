class AddColumnLapToUserForecasts < ActiveRecord::Migration
  def change
    add_column :user_forecasts , :lap , :decimal, :precision => 10 , :scale => 2
  end
end
