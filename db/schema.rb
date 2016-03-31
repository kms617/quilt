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

ActiveRecord::Schema.define(version: 20160328164358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "timeslot_id"
    t.integer  "recruiter_id"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "appointments", ["candidate_id"], name: "index_appointments_on_candidate_id", using: :btree
  add_index "appointments", ["recruiter_id"], name: "index_appointments_on_recruiter_id", using: :btree
  add_index "appointments", ["timeslot_id"], name: "index_appointments_on_timeslot_id", using: :btree

  create_table "candidates", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "phone"
    t.string  "zip",            default: "32256"
    t.string  "travel_limit"
    t.string  "status",         default: "New Lead"
    t.string  "source",         default: "Walk In"
    t.date    "date_available"
    t.string  "ethnicity"
    t.string  "gender"
    t.string  "veteran"
    t.string  "disability"
    t.boolean "eligible",       default: true
    t.integer "category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string  "name"
    t.integer "bullhorn_id"
    t.string  "image"
  end

  create_table "recruiters", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "recruiters", ["email"], name: "index_recruiters_on_email", unique: true, using: :btree
  add_index "recruiters", ["reset_password_token"], name: "index_recruiters_on_reset_password_token", unique: true, using: :btree

  create_table "timeslots", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
