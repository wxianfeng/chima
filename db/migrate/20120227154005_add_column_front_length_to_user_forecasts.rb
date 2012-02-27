class AddColumnFrontLengthToUserForecasts < ActiveRecord::Migration
  def change
    add_column :user_forecasts , :front_length , :decimal ,  :precision => 10 , :scale => 2
    add_column :user_forecasts , :back_length , :decimal ,  :precision => 10 , :scale => 2
  end
end
