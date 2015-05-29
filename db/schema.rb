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

ActiveRecord::Schema.define(version: 20150529183727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "identities", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.string   "name",                     null: false
    t.integer  "category",    default: 0
    t.text     "description"
    t.string   "tags",        default: [],              array: true
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "photo"
    t.integer  "identity_id"
  end

end
