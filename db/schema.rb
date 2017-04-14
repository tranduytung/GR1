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

ActiveRecord::Schema.define(version: 20161218140909) do

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "examinees", force: :cascade do |t|
    t.string   "name"
    t.string   "people_id"
    t.string   "student_id"
    t.string   "phone"
    t.string   "home_town"
    t.string   "hight_school"
    t.datetime "birthday",                              null: false
    t.boolean  "graduated"
    t.float    "graduate_score",          default: 0.0
    t.float    "priority_point",          default: 0.0
    t.float    "encourage_point",         default: 0.0
    t.float    "average_point",           default: 0.0
    t.integer  "year"
    t.integer  "group_graduated_exam_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "email",                   default: "",  null: false
    t.string   "encrypted_password",      default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "examinees", ["email"], name: "index_examinees_on_email", unique: true
  add_index "examinees", ["group_graduated_exam_id"], name: "index_examinees_on_group_graduated_exam_id"
  add_index "examinees", ["people_id"], name: "index_examinees_on_people_id", unique: true
  add_index "examinees", ["reset_password_token"], name: "index_examinees_on_reset_password_token", unique: true

  create_table "exams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_exams", force: :cascade do |t|
    t.integer  "math",       default: 0
    t.integer  "literature", default: 0
    t.integer  "english",    default: 0
    t.integer  "physical",   default: 0
    t.integer  "chemistry",  default: 0
    t.integer  "biological", default: 0
    t.integer  "history",    default: 0
    t.integer  "geography",  default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "group_graduated_exams", force: :cascade do |t|
    t.integer  "exam_id_1"
    t.integer  "exam_id_2"
    t.integer  "exam_id_3"
    t.integer  "exam_id_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "major_group_exams", force: :cascade do |t|
    t.integer  "major_id"
    t.integer  "group_exam_id"
    t.float    "benchmark1",    default: 0.0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "major_group_exams", ["group_exam_id"], name: "index_major_group_exams_on_group_exam_id"
  add_index "major_group_exams", ["major_id"], name: "index_major_group_exams_on_major_id"

  create_table "major_infos", force: :cascade do |t|
    t.integer  "major_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "major_infos", ["major_id"], name: "index_major_infos_on_major_id"

  create_table "majors", force: :cascade do |t|
    t.integer  "university_id"
    t.string   "code"
    t.integer  "year"
    t.integer  "target"
    t.integer  "register_status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "last_year_benchmark"
  end

  add_index "majors", ["university_id"], name: "index_majors_on_university_id"

  create_table "register_times", force: :cascade do |t|
    t.integer  "year"
    t.datetime "start_aspiration_1"
    t.datetime "end_aspiration_1"
    t.datetime "start_aspiration_2"
    t.datetime "end_aspiration_2"
    t.datetime "start_aspiration_3"
    t.datetime "end_aspiration_3"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "registers", force: :cascade do |t|
    t.integer  "examinee_id"
    t.integer  "major_id"
    t.integer  "group_exam_id"
    t.integer  "numbering_order"
    t.float    "review_score"
    t.integer  "status",          default: 0
    t.integer  "aspiration"
    t.integer  "year"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "registers", ["examinee_id"], name: "index_registers_on_examinee_id"
  add_index "registers", ["group_exam_id"], name: "index_registers_on_group_exam_id"
  add_index "registers", ["major_id"], name: "index_registers_on_major_id"

  create_table "results", force: :cascade do |t|
    t.float    "math",        default: 0.0
    t.float    "literature",  default: 0.0
    t.float    "english",     default: 0.0
    t.float    "physical",    default: 0.0
    t.float    "chemistry",   default: 0.0
    t.float    "biological",  default: 0.0
    t.float    "history",     default: 0.0
    t.float    "geography",   default: 0.0
    t.integer  "examinee_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "results", ["examinee_id"], name: "index_results_on_examinee_id"

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "password"
    t.string   "phone"
    t.string   "address"
    t.string   "web_site"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "universities", ["email"], name: "index_universities_on_email", unique: true
  add_index "universities", ["reset_password_token"], name: "index_universities_on_reset_password_token", unique: true

end
