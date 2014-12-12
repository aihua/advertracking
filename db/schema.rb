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

ActiveRecord::Schema.define(version: 20141211020848) do

  create_table "advertisements", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "priority_id"
    t.integer  "sector_id"
    t.integer  "company_id"
    t.integer  "catalog_id"
    t.datetime "call_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs", force: true do |t|
    t.string   "name"
    t.integer  "sector_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.string   "company_telephone_1"
    t.string   "company_telephone_2"
    t.string   "company_email"
    t.text     "company_address"
    t.string   "representative_fullname"
    t.string   "representative_telephone"
    t.string   "representative_email"
    t.string   "web_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sector_id"
  end

  create_table "priorities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
