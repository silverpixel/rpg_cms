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

ActiveRecord::Schema.define(version: 20150507094245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "char_attrs", force: true do |t|
    t.integer  "char_type_id"
    t.string   "att_name",     limit: 15
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "char_attrs", ["char_type_id"], name: "index_char_attrs_on_char_type_id", using: :btree

  create_table "char_types", force: true do |t|
    t.integer  "user_id"
    t.string   "name",       limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "char_types", ["user_id"], name: "index_char_types_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",   limit: 20
    t.string   "password",   limit: 25
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end