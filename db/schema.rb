# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_20_212313) do

  create_table "device_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.integer "device_type_id", null: false
    t.integer "home_id", null: false
    t.integer "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["device_type_id"], name: "index_devices_on_device_type_id"
    t.index ["home_id"], name: "index_devices_on_home_id"
    t.index ["room_id"], name: "index_devices_on_room_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "event_date"
    t.integer "device_id", null: false
    t.boolean "is_on"
    t.boolean "is_preprogrammed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["device_id"], name: "index_events_on_device_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "address"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "home_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_id"], name: "index_rooms_on_home_id"
  end

  create_table "temperature_changes", force: :cascade do |t|
    t.integer "room_id", null: false
    t.date "date"
    t.time "time"
    t.string "temperature_celsius"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_temperature_changes_on_room_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "devices", "device_types"
  add_foreign_key "devices", "homes"
  add_foreign_key "devices", "rooms"
  add_foreign_key "events", "devices"
  add_foreign_key "rooms", "homes"
  add_foreign_key "temperature_changes", "rooms"
end
