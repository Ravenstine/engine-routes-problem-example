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

ActiveRecord::Schema.define(version: 20150629233939) do

  create_table "news_stories", force: :cascade do |t|
    t.string   "name"
    t.string   "headline"
    t.string   "short_headline"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "resource"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "permissions", ["resource"], name: "index_permissions_on_resource"

  create_table "user_permissions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_permissions", ["permission_id"], name: "index_user_permissions_on_permission_id"
  add_index "user_permissions", ["user_id"], name: "index_user_permissions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "last_login"
    t.boolean  "can_login"
    t.boolean  "is_superuser"
    t.boolean  "email_changed"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
