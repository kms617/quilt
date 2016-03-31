ActiveRecord::Schema.define(version: 20160330194638) do

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

  add_index "candidates", ["email"], name: "index_candidates_on_email", unique: true, using: :btree
  add_index "candidates", ["reset_password_token"], name: "index_candidates_on_reset_password_token", unique: true, using: :btree

  create_table "recruiters", force: :cascade do |t|
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name",             default: "Bill",    null: false
    t.string   "last_name",              default: "Recruit", null: false
  end

  add_index "recruiters", ["email"], name: "index_recruiters_on_email", unique: true, using: :btree
  add_index "recruiters", ["reset_password_token"], name: "index_recruiters_on_reset_password_token", unique: true, using: :btree

  create_table "timeslots", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
