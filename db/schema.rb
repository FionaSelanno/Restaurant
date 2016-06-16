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

ActiveRecord::Schema.define(version: 20160615153107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.boolean  "booked?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "restaurant_name"
    t.text     "description"
    t.integer  "seats"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "city"
    t.string   "address"
    t.integer  "user_id"
  end

  add_index "locations", ["user_id"], name: "index_locations_on_user_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "menu_name"
    t.text     "menu_discription"
    t.string   "cuisine"
    t.integer  "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "location_id"
  end

  add_index "menus", ["location_id"], name: "index_menus_on_location_id", using: :btree

  create_table "search_results", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "menu_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "search_results", ["location_id"], name: "index_search_results_on_location_id", using: :btree
  add_index "search_results", ["menu_id"], name: "index_search_results_on_menu_id", using: :btree
  add_index "search_results", ["user_id"], name: "index_search_results_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "users"
  add_foreign_key "locations", "users"
  add_foreign_key "menus", "locations"
  add_foreign_key "search_results", "locations"
  add_foreign_key "search_results", "menus"
  add_foreign_key "search_results", "users"
end
