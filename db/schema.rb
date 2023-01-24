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

ActiveRecord::Schema[7.0].define(version: 2023_01_24_042414) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.bigint "parent_id"
    t.bigint "teacher_id"
    t.string "name"
    t.string "image"
    t.string "dob"
    t.string "gender"
    t.boolean "pick_up"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_children_on_parent_id"
    t.index ["teacher_id"], name: "index_children_on_teacher_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.string "phone_number"
    t.string "open"
    t.string "close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.string "password_digest"
    t.string "email"
    t.string "acct_type"
    t.string "phone_number"
    t.string "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "children", "users", column: "parent_id"
  add_foreign_key "children", "users", column: "teacher_id"
end
