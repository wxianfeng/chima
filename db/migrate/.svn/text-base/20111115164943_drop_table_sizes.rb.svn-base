class DropTableSizes < ActiveRecord::Migration
  def up
    #  brand_id int 品牌id
    #  gender int 1 男装  ， 2 女装
    #  where int 1 上衣,2下衣,3 套装
    #  category_id int 分类ID
    #  model_id int 型号id
    drop_table :sizes
    add_column :up_sizes , :brand_id , :integer
    add_column :up_sizes , :gender , :integer
    add_column :up_sizes , :where , :integer
    add_column :up_sizes , :category_id , :integer
    add_column :up_sizes , :model_id , :integer

    add_column :down_sizes , :brand_id , :integer
    add_column :down_sizes , :gender , :integer
    add_column :down_sizes , :where , :integer
    add_column :down_sizes , :category_id , :integer
    add_column :down_sizes , :model_id , :integer
  end

  def down
  end
end
