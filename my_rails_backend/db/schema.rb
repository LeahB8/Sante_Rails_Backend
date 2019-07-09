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

ActiveRecord::Schema.define(version: 2019_07_09_201233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concerns", force: :cascade do |t|
    t.text "problem"
    t.integer "problemID"
    t.string "avoid"
    t.string "consume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_concerns", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "concern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concern_id"], name: "index_user_concerns_on_concern_id"
    t.index ["user_id"], name: "index_user_concerns_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstName"
    t.integer "weight"
    t.integer "height"
    t.integer "age"
    t.string "image_url"
  end

  add_foreign_key "user_concerns", "concerns"
  add_foreign_key "user_concerns", "users"
end
