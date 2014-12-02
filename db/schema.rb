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

ActiveRecord::Schema.define(version: 20141202201352) do

  create_table "counselors", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "contact"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",       limit: 25, default: "staff"
  end

  add_index "counselors", ["school_id"], name: "index_counselors_on_school_id"

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "location"
    t.date     "date"
    t.time     "start_time"
    t.time     "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graduation_requirements", force: true do |t|
    t.string   "year"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "school"
    t.string   "test_code"
    t.string   "high_school_code"
    t.integer  "test_date_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["test_date_id"], name: "index_locations_on_test_date_id"

  create_table "requirement_categories", force: true do |t|
    t.string   "name"
    t.integer  "graduation_requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requirement_categories", ["graduation_requirement_id"], name: "index_requirement_categories_on_graduation_requirement_id"

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subdomain"
  end

  create_table "senior_checklists", force: true do |t|
    t.string   "month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "requirement_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "requirement"
  end

  create_table "test_dates", force: true do |t|
    t.date     "date"
    t.date     "deadline"
    t.integer  "testing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_dates", ["testing_id"], name: "index_test_dates_on_testing_id"

  create_table "testing_comparisons", force: true do |t|
    t.string   "name"
    t.string   "cost"
    t.text     "general_information"
    t.text     "test_content"
    t.text     "scoring"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testings", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "to_do_lists", force: true do |t|
    t.string   "item"
    t.integer  "senior_checklist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "to_do_lists", ["senior_checklist_id"], name: "index_to_do_lists_on_senior_checklist_id"

end
