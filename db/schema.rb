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

ActiveRecord::Schema.define(version: 20160607234559) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "intention_id"
    t.integer  "selected_intention_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "appointments", ["intention_id"], name: "index_appointments_on_intention_id"
  add_index "appointments", ["restaurant_id"], name: "index_appointments_on_restaurant_id"
  add_index "appointments", ["selected_intention_id"], name: "index_appointments_on_selected_intention_id"

  create_table "intentions", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "interests"
    t.string   "company"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "date"
    t.string   "position"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
