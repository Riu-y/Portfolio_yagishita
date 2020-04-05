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

ActiveRecord::Schema.define(version: 2020_04_05_035148) do

  create_table "ad_clients", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "company_name", null: false
    t.string "company_nam_kana", null: false
    t.string "ceo_name", null: false
    t.string "ceo_name_kana", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "telephone_number", null: false
    t.string "profile_image_id"
    t.string "registry_image_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_ad_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_ad_clients_on_reset_password_token", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "ads", force: :cascade do |t|
    t.integer "genre_id", null: false
    t.string "title", null: false
    t.text "content", null: false
    t.integer "ad_image"
    t.integer "ad_fee", null: false
    t.boolean "is_active", default: true, null: false
    t.integer "ad_priod", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_informations", force: :cascade do |t|
    t.integer "driver_id", null: false
    t.string "manufacturer_name", null: false
    t.string "car_name", null: false
    t.string "certificate_image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade do |t|
    t.integer "room_id", null: false
    t.integer "user_type", null: false
    t.text "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complete_deals", force: :cascade do |t|
    t.integer "deal_details_id", null: false
    t.integer "ad_id", null: false
    t.integer "payment_amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.string "company_name"
    t.string "telephone_number", null: false
    t.string "email", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deal_details", force: :cascade do |t|
    t.integer "driver_id", null: false
    t.integer "room_id", null: false
    t.string "prove_image_id", null: false
    t.integer "daily_amount", null: false
    t.integer "transfer_status", limit: 1, default: 0, null: false
    t.string "bank_name", null: false
    t.string "branch_name", null: false
    t.integer "account_type", null: false
    t.integer "account_number", null: false
    t.string "account_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "driver_name", null: false
    t.string "driver_name_kana", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "telephone_number_id", null: false
    t.string "profile_image_id"
    t.string "driver_license_image_id", null: false
    t.boolean "is_acctive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_drivers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_drivers_on_reset_password_token", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name", null: false
    t.boolean "flag_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "chat_id", null: false
    t.integer "ad_client_id", null: false
    t.integer "driver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transfer_informations", force: :cascade do |t|
    t.integer "driver_id", null: false
    t.string "bank_name", null: false
    t.string "branch_name", null: false
    t.integer "account_type", null: false
    t.integer "account_number", null: false
    t.string "account_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "under_deals", force: :cascade do |t|
    t.integer "ad_id", null: false
    t.integer "ad_client_id", null: false
    t.integer "driver_id", null: false
    t.integer "work_status", limit: 1, default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
