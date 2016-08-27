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

ActiveRecord::Schema.define(version: 20160827122550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "owner_type",      null: false
    t.integer  "owner_id",        null: false
    t.text     "street_address1", null: false
    t.text     "street_address2"
    t.string   "city",            null: false
    t.string   "state",           null: false
    t.string   "pincode",         null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["owner_type", "owner_id"], name: "index_addresses_on_owner_type_and_owner_id", using: :btree
  end

  create_table "blood_banks", force: :cascade do |t|
    t.string   "name",                null: false
    t.date     "established_on",      null: false
    t.string   "hospital"
    t.boolean  "government_approved", null: false
    t.integer  "capacity"
    t.string   "website"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "owner_type",    null: false
    t.integer  "owner_id",      null: false
    t.integer  "phone_type_cd", null: false
    t.string   "phone_number",  null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["owner_type", "owner_id"], name: "index_phone_numbers_on_owner_type_and_owner_id", using: :btree
  end

end
