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

ActiveRecord::Schema.define(version: 20160816201326) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer  "person_detail_id"
    t.string   "title"
    t.integer  "category_id"
    t.string   "picture"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "education_details", force: :cascade do |t|
    t.string   "certificate_type_name"
    t.string   "institution_name"
    t.string   "board_or_university_name"
    t.float    "percentage_or_cgpa"
    t.integer  "year_of_passing"
    t.integer  "person_detail_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.integer  "person_detail_id"
    t.integer  "type_id"
    t.string   "payment_method"
    t.float    "amount"
    t.date     "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.integer  "person_detail_id"
    t.integer  "type_id"
    t.string   "recieved_in"
    t.float    "amount"
    t.date     "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "medical_details", force: :cascade do |t|
    t.integer  "person_detail_id"
    t.string   "blood_group"
    t.string   "family_doctor_name"
    t.string   "family_doctor_number"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "person_details", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.date     "date_of_birth"
    t.string   "address"
    t.integer  "contact_number", limit: 8
    t.string   "country"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.string   "profilepic"
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
