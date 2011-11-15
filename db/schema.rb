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

ActiveRecord::Schema.define(:version => 20111115171404) do

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
  end

  add_index "down_sizes", ["chima_id"], :name => "index_down_sizes_on_chima_id"

  create_table "models", :force => true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["brand_id"], :name => "index_models_on_brand_id"

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
  end

  add_index "up_sizes", ["chima_id"], :name => "index_up_sizes_on_chima_id"

end
