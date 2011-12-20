# encoding:utf-8
class ChangeColumnForeastMsizesHeight < ActiveRecord::Migration
  def up
    rename_column :forecast_msizes , :height , :height_id
    rename_column :forecast_msizes , :weight , :weight_id
    change_column :forecast_msizes , :weight_id , :integer

    rename_column :forecast_wsizes , :height , :height_id
    rename_column :forecast_wsizes , :weight , :weight_id
    change_column :forecast_wsizes , :weight_id , :integer
  end

  def down
  end
end
