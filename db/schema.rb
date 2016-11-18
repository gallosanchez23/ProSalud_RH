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

ActiveRecord::Schema.define(version: 20161114020346) do

  create_table "external_roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.date     "start_date",                default: '2016-11-13'
    t.date     "end_date"
    t.integer  "type",        limit: 4,     default: 1
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "adress",     limit: 255
    t.string   "phone",      limit: 255
    t.string   "photo",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "presents", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "points",      limit: 4
    t.string   "photo",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_goals", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "goal_id",    limit: 4
    t.integer  "progress",   limit: 4
    t.text     "comments",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "user_goals", ["goal_id"], name: "index_user_goals_on_goal_id", using: :btree
  add_index "user_goals", ["user_id"], name: "index_user_goals_on_user_id", using: :btree

  create_table "user_presents", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "present_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "user_presents", ["present_id"], name: "index_user_presents_on_present_id", using: :btree
  add_index "user_presents", ["user_id"], name: "index_user_presents_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "last_name",        limit: 255
    t.string   "user_name",        limit: 255
    t.string   "password",         limit: 255
    t.string   "adress",           limit: 255
    t.string   "phone",            limit: 255
    t.string   "email",            limit: 255
    t.string   "favorite_cake",    limit: 255
    t.string   "photo",            limit: 255
    t.string   "curp",             limit: 255
    t.string   "rfc",              limit: 255
    t.date     "start_date",                     default: '2016-11-13'
    t.integer  "antique",          limit: 4
    t.boolean  "status",                         default: true
    t.text     "comments",         limit: 65535
    t.integer  "points",           limit: 4,     default: 0
    t.integer  "role_id",          limit: 4,     default: 4
    t.integer  "external_role_id", limit: 4
    t.integer  "user_id",          limit: 4
    t.integer  "place_id",         limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "users", ["external_role_id"], name: "index_users_on_external_role_id", using: :btree
  add_index "users", ["place_id"], name: "index_users_on_place_id", using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["user_id"], name: "index_users_on_user_id", using: :btree

  add_foreign_key "user_goals", "goals"
  add_foreign_key "user_goals", "users"
  add_foreign_key "users", "external_roles"
  add_foreign_key "users", "places"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "users"
end