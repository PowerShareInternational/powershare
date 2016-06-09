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

ActiveRecord::Schema.define(version: 20160609163937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "name"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content",      default: ""
    t.text     "description"
    t.text     "measurement"
    t.date     "achieved_by"
    t.integer  "votes",        default: 0
    t.boolean  "achieved",     default: false
    t.boolean  "approved",     default: false
    t.text     "responses"
    t.integer  "user_id"
    t.integer  "community_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "microposts", ["community_id"], name: "index_microposts_on_community_id", using: :btree
  add_index "microposts", ["created_at"], name: "index_microposts_on_created_at", using: :btree
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id", using: :btree
  add_index "microposts", ["votes"], name: "index_microposts_on_votes", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "zip"
    t.string   "email"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
    t.text     "middle_name"
    t.integer  "community_id"
    t.boolean  "active",          default: false
    t.text     "priority",        default: "none"
    t.boolean  "official"
    t.text     "title"
  end

  add_index "users", ["community_id"], name: "index_users_on_community_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "microposts", "communities"
  add_foreign_key "microposts", "users"
end
