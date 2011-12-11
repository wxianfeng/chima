class CreateUpSizes < ActiveRecord::Migration
  def change
    create_table :up_sizes do |t|
      t.integer :chima_id
      t.decimal :front_length , :precision => 10 , :scale => 1
      t.decimal :back_length , :precision => 10 , :scale => 1
      t.decimal :chest, :precision => 10 , :scale => 1
      t.decimal :waistline, :precision => 10 , :scale => 1
      t.decimal :lap, :precision => 10 , :scale => 1
      t.decimal :shoulder, :precision => 10 , :scale => 1
      t.decimal :sleeve, :precision => 10 , :scale => 1
      t.decimal :cage, :precision => 10 , :scale => 1
      t.decimal :fat, :precision => 10 , :scale => 1
      t.decimal :cuff, :precision => 10 , :scale => 1
      t.decimal :short_sleeve, :precision => 10 , :scale => 1
      t.decimal :neck, :precision => 10 , :scale => 1
      t.decimal :colby, :precision => 10 , :scale => 1
      t.decimal :sleeve_width, :precision => 10 , :scale => 1
      t.decimal :weight, :precision => 10 , :scale => 1

      t.timestamps
    end
    add_index :up_sizes , :chima_id
  end
end
