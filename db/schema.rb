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

ActiveRecord::Schema.define(version: 20160804183639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.text     "answer",     default: [],              array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "user_questions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.string   "status"
    t.string   "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_questions", ["question_id"], name: "index_user_questions_on_question_id", using: :btree
  add_index "user_questions", ["user_id"], name: "index_user_questions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "user_questions", "questions"
  add_foreign_key "user_questions", "users"
end
