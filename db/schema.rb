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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141118085919) do

  create_table "descriptions", force: true do |t|
    t.text     "description"
    t.integer  "master_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descriptions", ["master_id_id"], name: "index_descriptions_on_master_id_id"

  create_table "images", force: true do |t|
    t.string   "image_name"
    t.integer  "description_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["description_id_id"], name: "index_images_on_description_id_id"

# ActiveRecord::Schema.define(version: 20141118100736) do


  create_table "masters", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secondary_tbls", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "height"
    t.integer  "width"
    t.integer  "distance_starts"
    t.integer  "distance_ends"
    t.integer  "masters_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "secondary_tbls", ["masters_id_id"], name: "index_secondary_tbls_on_masters_id_id"

end
