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

ActiveRecord::Schema.define(version: 20141119180924) do

  create_table "car_reservations", force: true do |t|
    t.string   "reservation_date"
    t.string   "no_of_people"
    t.string   "source"
    t.string   "destination"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "complaints", force: true do |t|
    t.string   "username"
    t.string   "department"
    t.string   "compl_type"
    t.string   "subject"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guest_house_reservations", force: true do |t|
    t.string   "from_date"
    t.string   "to_date"
    t.string   "no_of_guests"
    t.string   "purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hall_reservations", force: true do |t|
    t.string   "reservation_date"
    t.string   "no_of_people"
    t.string   "hall"
    t.string   "purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logins", force: true do |t|
    t.string   "email"
    t.string   "Password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  create_table "names", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "dept"
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "department"
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "email", unique: true, using: :btree

end
