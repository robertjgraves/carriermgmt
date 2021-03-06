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

ActiveRecord::Schema.define(version: 20131213193542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carriers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "origin_destination_pairs", force: true do |t|
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "origin_destination_pairs", ["destination_id"], name: "index_origin_destination_pairs_on_destination_id", using: :btree
  add_index "origin_destination_pairs", ["origin_id", "destination_id"], name: "index_origin_destination_pairs_on_origin_id_and_destination_id", unique: true, using: :btree
  add_index "origin_destination_pairs", ["origin_id"], name: "index_origin_destination_pairs_on_origin_id", using: :btree

  create_table "rates", force: true do |t|
    t.integer  "carrier_id"
    t.integer  "origin_destination_pair_id"
    t.decimal  "rate"
    t.decimal  "surcharge"
    t.date     "effective_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["carrier_id"], name: "index_rates_on_carrier_id", using: :btree
  add_index "rates", ["origin_destination_pair_id"], name: "index_rates_on_origin_destination_pair_id", using: :btree

end
