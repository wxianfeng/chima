class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :value , :precision => 10 , :scale => 2

      t.timestamps
    end
  end
end
