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

ActiveRecord::Schema.define(version: 20160802121156) do

  create_table "calls", force: :cascade do |t|
    t.integer  "constituent_id"
    t.integer  "contact_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "constituents", force: :cascade do |t|
    t.string   "member_name"
    t.text     "issue"
    t.string   "status"
    t.string   "contact_info"
    t.boolean  "psi"
    t.integer  "contact_id"
    t.string   "assigned_to"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "office"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "note"
    t.integer  "constituent_id"
    t.string   "cca"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
