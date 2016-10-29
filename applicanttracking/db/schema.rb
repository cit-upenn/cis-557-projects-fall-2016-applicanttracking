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

ActiveRecord::Schema.define(version: 20161029201201) do

  create_table "admins", force: :cascade do |t|
    t.string   "api_auth_token"
    t.string   "email"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "awards", ["user_id"], name: "index_awards_on_user_id"

  create_table "educations", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.boolean  "current"
    t.string   "degree"
    t.string   "school"
    t.float    "gpa"
    t.string   "major"
    t.string   "minor"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "educations", ["user_id"], name: "index_educations_on_user_id"

  create_table "experiences", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.boolean  "current"
    t.string   "title"
    t.string   "company"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id"

  create_table "extracurriculars", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.string   "organization"
    t.boolean  "current"
    t.string   "position"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "extracurriculars", ["user_id"], name: "index_extracurriculars_on_user_id"

  create_table "githubs", force: :cascade do |t|
    t.string   "path"
    t.string   "username"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "githubs", ["user_id"], name: "index_githubs_on_user_id"

  create_table "linkedins", force: :cascade do |t|
    t.string   "path"
    t.string   "username"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "linkedins", ["user_id"], name: "index_linkedins_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.integer  "phone",          limit: 8
    t.string   "email"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
