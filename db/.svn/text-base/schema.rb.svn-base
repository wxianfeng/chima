# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111220160236) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "down_sizes", :force => true do |t|
    t.integer  "chima_id"
    t.decimal  "chest",         :precision => 10, :scale => 1
    t.decimal  "ass",           :precision => 10, :scale => 1
    t.decimal  "leng",          :precision => 10, :scale => 1
    t.decimal  "total",         :precision => 10, :scale => 1
    t.decimal  "crosspiece",    :precision => 10, :scale => 1
    t.decimal  "before_weaves", :precision => 10, :scale => 1
    t.decimal  "back_weaves",   :precision => 10, :scale => 1
    t.decimal  "knee",          :precision => 10, :scale => 1
    t.decimal  "kukou",         :precision => 10, :scale => 1
    t.decimal  "weight",        :precision => 10, :scale => 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
    t.integer  "gender"
    t.integer  "category_id"
    t.integer  "model_id"
    t.integer  "size_id"
    t.integer  "item_id"
  end

  add_index "down_sizes", ["chima_id"], :name => "index_down_sizes_on_chima_id"

  create_table "forecast_msizes", :force => true do |t|
    t.integer  "height"
    t.decimal  "weight",       :precision => 10, :scale => 2
    t.decimal  "chest",        :precision => 10, :scale => 2
    t.decimal  "middle_chest", :precision => 10, :scale => 2
    t.decimal  "shoulder",     :precision => 10, :scale => 2
    t.decimal  "sleeve",       :precision => 10, :scale => 2
    t.decimal  "neck",         :precision => 10, :scale => 2
    t.decimal  "down_chest",   :precision => 10, :scale => 2
    t.decimal  "ass",          :precision => 10, :scale => 2
    t.decimal  "crosspiece",   :precision => 10, :scale => 2
    t.decimal  "foot",         :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forecast_msizes", ["height", "weight"], :name => "index_forecast_msizes_on_height_and_weight"

  create_table "forecast_wsizes", :force => true do |t|
    t.integer  "height"
    t.decimal  "weight",       :precision => 10, :scale => 2
    t.decimal  "chest",        :precision => 10, :scale => 2
    t.decimal  "middle_chest", :precision => 10, :scale => 2
    t.decimal  "shoulder",     :precision => 10, :scale => 2
    t.decimal  "sleeve",       :precision => 10, :scale => 2
    t.decimal  "neck",         :precision => 10, :scale => 2
    t.decimal  "down_chest",   :precision => 10, :scale => 2
    t.decimal  "ass",          :precision => 10, :scale => 2
    t.decimal  "crosspiece",   :precision => 10, :scale => 2
    t.decimal  "foot",         :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forecast_wsizes", ["height", "weight"], :name => "index_forecast_wsizes_on_height_and_weight"

  create_table "heights", :force => true do |t|
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  add_index "models", ["brand_id"], :name => "index_models_on_brand_id"

  create_table "sizes", :force => true do |t|
    t.integer  "brand_id"
    t.string   "name"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "up_sizes", :force => true do |t|
    t.integer  "chima_id"
    t.decimal  "front_length", :precision => 10, :scale => 1
    t.decimal  "back_length",  :precision => 10, :scale => 1
    t.decimal  "chest",        :precision => 10, :scale => 1
    t.decimal  "waistline",    :precision => 10, :scale => 1
    t.decimal  "lap",          :precision => 10, :scale => 1
    t.decimal  "shoulder",     :precision => 10, :scale => 1
    t.decimal  "sleeve",       :precision => 10, :scale => 1
    t.decimal  "cage",         :precision => 10, :scale => 1
    t.decimal  "fat",          :precision => 10, :scale => 1
    t.decimal  "cuff",         :precision => 10, :scale => 1
    t.decimal  "short_sleeve", :precision => 10, :scale => 1
    t.decimal  "neck",         :precision => 10, :scale => 1
    t.decimal  "colby",        :precision => 10, :scale => 1
    t.decimal  "sleeve_width", :precision => 10, :scale => 1
    t.decimal  "weight",       :precision => 10, :scale => 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
    t.integer  "gender"
    t.integer  "category_id"
    t.integer  "model_id"
    t.integer  "size_id"
    t.integer  "item_id"
  end

  add_index "up_sizes", ["chima_id"], :name => "index_up_sizes_on_chima_id"

  create_table "users", :force => true do |t|
    t.integer  "visitor_id"
    t.string   "visitor_nick"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gender",                                      :default => 0
    t.integer  "height"
    t.decimal  "weight",       :precision => 10, :scale => 1
    t.string   "style",                                       :default => "thin"
  end

  create_table "weights", :force => true do |t|
    t.decimal  "value",      :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
