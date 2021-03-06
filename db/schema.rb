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

ActiveRecord::Schema.define(version: 20160827124403) do

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

  create_table "blood_donation_records", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "blood_bank_id", null: false
    t.date     "donation_date", null: false
    t.integer  "quantity",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["blood_bank_id"], name: "index_blood_donation_records_on_blood_bank_id", using: :btree
    t.index ["user_id"], name: "index_blood_donation_records_on_user_id", using: :btree
  end

  create_table "blood_requests", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "email"
    t.string   "blood_group", null: false
    t.integer  "status",      null: false
    t.boolean  "emergency",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "owner_type", null: false
    t.integer  "owner_id",   null: false
    t.string   "file",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_type", "owner_id"], name: "index_documents_on_owner_type_and_owner_id", using: :btree
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "owner_type",   null: false
    t.integer  "owner_id",     null: false
    t.integer  "phone_type",   null: false
    t.string   "phone_number", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["owner_type", "owner_id"], name: "index_phone_numbers_on_owner_type_and_owner_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.datetime "date_of_birth"
    t.integer  "gender"
    t.integer  "blood_group"
    t.integer  "weight"
    t.string   "mobile_number"
    t.datetime "date_of_last_blood_donation"
    t.boolean  "sms_alert"
    t.string   "city"
    t.text     "address"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
