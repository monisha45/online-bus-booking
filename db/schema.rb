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

ActiveRecord::Schema.define(version: 20141208085417) do

  create_table "billing_details", force: true do |t|
    t.integer  "reservation_id"
    t.integer  "user_id"
    t.string   "billing_type"
    t.string   "transaction_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_types", force: true do |t|
    t.string   "type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buses", force: true do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.integer  "bus_type_id"
    t.integer  "no_of_seats_available"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.integer  "ticket_price"
    t.date     "date_of_journey"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bus_names"
  end

  create_table "reservation_details", force: true do |t|
    t.integer  "bus_id"
    t.integer  "user_id"
    t.integer  "no_of_persons"
    t.string   "gender"
    t.integer  "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.text     "descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roots", force: true do |t|
    t.integer  "route_id"
    t.string   "from"
    t.string   "to"
    t.date     "depart_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rots", force: true do |t|
    t.integer  "route_id"
    t.string   "from"
    t.string   "to"
    t.date     "depart_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "source"
    t.text     "destination"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "address"
    t.integer  "phone_number"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
