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

ActiveRecord::Schema.define(version: 2019_11_20_192542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "grill_id"
    t.text "address"
    t.date "check_in"
    t.date "check_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grill_id"], name: "index_bookings_on_grill_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "grills", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "grills_type"
    t.integer "price"
    t.boolean "status"
    t.bigint "user_id"
    t.string "photo"
    t.index ["user_id"], name: "index_grills_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.bigint "grill_id"
    t.index ["grill_id"], name: "index_photos_on_grill_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.text "content"
    t.bigint "user_id"
    t.bigint "grill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grill_id"], name: "index_reviews_on_grill_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "grills"
  add_foreign_key "bookings", "users"
  add_foreign_key "grills", "users"
  add_foreign_key "reviews", "grills"
  add_foreign_key "reviews", "users"
end
