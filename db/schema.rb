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

ActiveRecord::Schema.define(version: 20160301212847) do

  create_table "addresses", force: :cascade do |t|
    t.string   "addressable_type"
    t.integer  "addressable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"

  create_table "admins", force: :cascade do |t|
    t.string   "user_id"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dream_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "dream_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dream_categories", ["category_id"], name: "index_dream_categories_on_category_id"
  add_index "dream_categories", ["dream_id"], name: "index_dream_categories_on_dream_id"

  create_table "dreams", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "skill_level_id"
    t.integer  "instrument_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "dreams", ["instrument_id"], name: "index_dreams_on_instrument_id"
  add_index "dreams", ["skill_level_id"], name: "index_dreams_on_skill_level_id"
  add_index "dreams", ["student_id"], name: "index_dreams_on_student_id"

  create_table "instruments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "mentorship_id"
    t.integer  "address_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "lessons", ["address_id"], name: "index_lessons_on_address_id"
  add_index "lessons", ["mentorship_id"], name: "index_lessons_on_mentorship_id"

  create_table "mentorship_offerings", force: :cascade do |t|
    t.integer  "mentorship_id"
    t.integer  "offering_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "mentorship_offerings", ["mentorship_id"], name: "index_mentorship_offerings_on_mentorship_id"
  add_index "mentorship_offerings", ["offering_id"], name: "index_mentorship_offerings_on_offering_id"

  create_table "mentorships", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mentorships", ["student_id"], name: "index_mentorships_on_student_id"
  add_index "mentorships", ["tutor_id"], name: "index_mentorships_on_tutor_id"

  create_table "offering_categories", force: :cascade do |t|
    t.integer  "offering_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "offering_categories", ["category_id"], name: "index_offering_categories_on_category_id"
  add_index "offering_categories", ["offering_id"], name: "index_offering_categories_on_offering_id"

  create_table "offerings", force: :cascade do |t|
    t.integer  "tutor_id"
    t.integer  "skill_level_id"
    t.integer  "instrument_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "offerings", ["instrument_id"], name: "index_offerings_on_instrument_id"
  add_index "offerings", ["skill_level_id"], name: "index_offerings_on_skill_level_id"
  add_index "offerings", ["tutor_id"], name: "index_offerings_on_tutor_id"

  create_table "skill_levels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_availabilities", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "time_block_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "student_availabilities", ["student_id"], name: "index_student_availabilities_on_student_id"
  add_index "student_availabilities", ["time_block_id"], name: "index_student_availabilities_on_time_block_id"

  create_table "student_lesson_preferences", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "student_lesson_preferences", ["student_id"], name: "index_student_lesson_preferences_on_student_id"

  create_table "students", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "phone_number"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "time_blocks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutor_availabilities", force: :cascade do |t|
    t.integer  "tutor_id"
    t.integer  "time_block_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tutor_availabilities", ["time_block_id"], name: "index_tutor_availabilities_on_time_block_id"
  add_index "tutor_availabilities", ["tutor_id"], name: "index_tutor_availabilities_on_tutor_id"

  create_table "tutor_lesson_preferences", force: :cascade do |t|
    t.integer  "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tutor_lesson_preferences", ["tutor_id"], name: "index_tutor_lesson_preferences_on_tutor_id"

  create_table "tutors", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
