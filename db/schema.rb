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

ActiveRecord::Schema.define(version: 20151006223458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bootcamp_reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "campus"
    t.string   "worthit"
    t.integer  "location"
    t.integer  "jobhelp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bootcamp_id"
    t.string   "hired"
  end

  create_table "bootcamps", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "url"
    t.string   "photo"
    t.text     "information"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "faq"
    t.text     "courses"
  end

  create_table "instructor_reviews", force: :cascade do |t|
    t.integer  "hotness"
    t.integer  "approachable"
    t.integer  "knowledge"
    t.integer  "preparedness"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "instructor_id"
    t.string   "course"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.string   "linkedin"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bootcamp_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "instructor_id"
    t.integer  "bootcamp_id"
    t.integer  "hotness"
    t.integer  "approachable"
    t.integer  "knowledge"
    t.integer  "organization"
    t.integer  "campus"
    t.integer  "price"
    t.integer  "placement"
    t.integer  "location"
    t.integer  "instructors"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
