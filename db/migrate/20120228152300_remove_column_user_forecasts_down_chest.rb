class RemoveColumnUserForecastsDownChest < ActiveRecord::Migration
  def up
    remove_column :user_forecasts , :down_chest
  end

  def down
  end
end
