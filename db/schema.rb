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

ActiveRecord::Schema.define(version: 20160326160320) do

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
    t.string  "zipcode",           default: "32256"
    t.string  "radius"
    t.string  "status",            default: "Walk In"
    t.date    "date_available"
    t.string  "race"
    t.string  "languages"
    t.string  "gender"
    t.boolean "veteran_status"
    t.boolean "disability_status"
    t.boolean "eligible",          default: true
  end

  create_table "categories", force: :cascade do |t|
    t.string  "name"
    t.integer "bullhorn_id"
    t.integer "candidate_id"
  end

  create_table "recruiters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.datetime "end_time",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
