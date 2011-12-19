# encoding:utf-8
#forecast_msizes 预估尺寸(男)
#  height int 身高
#  weight decimal(10,2) 体重
#  chest decimal(10,2) 胸围
#  middle_chest decimal(10,2) 中腰围
#  shoulder decimal(10,2) 肩宽
#  sleeve decimal(10,2) 袖长
#  neck decimal(10,2) 领围
#  down_chest  decinmal(10,2) 腰围
#  ass decimal(10,2) 臀围
#  crosspiece decimal(10,2) 横档
#  foot decimal(10,2) 脚长
class CreateTableForecastMsizes < ActiveRecord::Migration
  def up
    create_table :forecast_msizes do |t|
      t.integer :height
      t.decimal :weight , :precision => 10 , :scale => 2
      t.decimal :chest , :precision => 10 , :scale => 2
      t.decimal :middle_chest , :precision => 10 , :scale => 2
      t.decimal :shoulder , :precision => 10 , :scale => 2
      t.decimal :sleeve , :precision => 10 , :scale => 2
      t.decimal :neck , :precision => 10 , :scale => 2
      t.decimal :down_chest , :precision => 10 , :scale => 2
      t.decimal :ass , :precision => 10 , :scale => 2
      t.decimal :crosspiece , :precision => 10 , :scale => 2
      t.decimal :foot , :precision => 10 , :scale => 2

      t.timestamps
    end
    add_index  :forecast_msizes , [:height,:weight]

    create_table :forecast_wsizes do |t|
      t.integer :height
      t.decimal :weight , :precision => 10 , :scale => 2
      t.decimal :chest , :precision => 10 , :scale => 2
      t.decimal :middle_chest , :precision => 10 , :scale => 2
      t.decimal :shoulder , :precision => 10 , :scale => 2
      t.decimal :sleeve , :precision => 10 , :scale => 2
      t.decimal :neck , :precision => 10 , :scale => 2
      t.decimal :down_chest , :precision => 10 , :scale => 2
      t.decimal :ass , :precision => 10 , :scale => 2
      t.decimal :crosspiece , :precision => 10 , :scale => 2
      t.decimal :foot , :precision => 10 , :scale => 2

      t.timestamps
    end
    add_index  :forecast_wsizes , [:height,:weight]
  end

  def down
  end
end
