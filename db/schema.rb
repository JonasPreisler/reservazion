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

ActiveRecord::Schema.define(version: 2018_08_17_021432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "image"
    t.string "website"
    t.string "secret"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "representative_image"
    t.string "representative_name"
    t.string "street"
    t.string "city"
    t.string "phone"
    t.string "logo"
    t.string "email"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "first name"
    t.string "last_name"
    t.string "last name"
    t.string "gender"
    t.string "source"
    t.string "locale"
    t.string "profile_pic_url"
    t.string "profile pic url"
    t.string "timezone"
    t.string "messenger_user_id"
    t.string "messenger user id"
    t.string "chatfuel_user_id"
    t.string "chatfuel user id"
    t.string "ref"
    t.string "country"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "address"
    t.string "latitude"
    t.string "longitude"
    t.string "map_url"
    t.string "map url"
    t.string "last_visited_block_name"
    t.string "last_visited_block_id"
    t.string "last_clicked_button_name"
    t.string "last_user_freeform_input"
    t.string "last visited block name"
    t.string "last visited block id"
    t.string "last clicked_button name"
    t.string "last user freeform input"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinners", force: :cascade do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "table_id"
    t.index ["table_id"], name: "index_dinners_on_table_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "last_purchased_item"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "amount"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first name"
    t.string "last name"
    t.string "last purchased item"
    t.string "last_payment_charge_id"
    t.string "last payment charge id"
    t.string "last_payment_address"
    t.string "last payment address"
    t.string "last_payment_phone"
    t.string "last payment phone"
    t.string "last_payment_email"
    t.string "last payment email"
    t.bigint "business_id"
    t.index ["business_id"], name: "index_orders_on_business_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.bigint "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "guest"
    t.string "messenger_user_id"
    t.string "messenger user id"
    t.bigint "slot_id"
    t.index ["slot_id"], name: "index_reservations_on_slot_id"
    t.index ["table_id"], name: "index_reservations_on_table_id"
  end

  create_table "slots", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "table_id"
    t.index ["table_id"], name: "index_slots_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "secret"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dinners", "tables"
  add_foreign_key "orders", "businesses"
  add_foreign_key "reservations", "slots"
  add_foreign_key "reservations", "tables"
  add_foreign_key "slots", "tables"
end
