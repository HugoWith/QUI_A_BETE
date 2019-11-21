# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_21_114503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.string "description"
    t.date "end_date"
    t.bigint "target_id"
    t.bigint "creator_id"
    t.bigint "beter_id"
    t.bigint "group_id", null: false
    t.string "stake"
    t.integer "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "gift_received", default: false
    t.bigint "winner_id"
    t.index ["beter_id"], name: "index_bets_on_beter_id"
    t.index ["creator_id"], name: "index_bets_on_creator_id"
    t.index ["group_id"], name: "index_bets_on_group_id"
    t.index ["target_id"], name: "index_bets_on_target_id"
    t.index ["winner_id"], name: "index_bets_on_winner_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usergroups", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.integer "score", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_owner"
    t.index ["group_id"], name: "index_usergroups_on_group_id"
    t.index ["user_id"], name: "index_usergroups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.string "default_photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bets", "groups"
  add_foreign_key "bets", "users", column: "beter_id"
  add_foreign_key "bets", "users", column: "creator_id"
  add_foreign_key "bets", "users", column: "target_id"
  add_foreign_key "bets", "users", column: "winner_id"
  add_foreign_key "usergroups", "groups"
  add_foreign_key "usergroups", "users"
end
