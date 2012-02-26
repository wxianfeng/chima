# encoding:utf-8
#
#user_forecasts 用户预估尺寸(计算出的数据)
#  user_id 用户
#  category_id 分类
#  style 身材类型
#  chest decimal(10,2) 胸围
#  middle_chest decimal(10,2) 中腰围
#  shoulder decimal(10,2) 肩宽
#  sleeve decimal(10,2) 袖长
#  neck decimal(10,2) 领围
#  arm decimal(10,2) 臂围
#  wrist  decimal(10,2) 腕围
#  down_chest  decinmal(10,2) 腰围
#  ass decimal(10,2) 臀围
#  crosspiece decimal(10,2) 横档
#  foot decimal(10,2) 脚长
#  knee decimal(10,2) 膝围
class CreateTableUserForecasts < ActiveRecord::Migration
  def up
    create_table :user_forecasts do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :style
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
