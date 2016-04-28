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

ActiveRecord::Schema.define(version: 20160428040056) do

  create_table "clusters", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "year"
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

  add_index "clusters", ["email"], name: "index_clusters_on_email", unique: true
  add_index "clusters", ["reset_password_token"], name: "index_clusters_on_reset_password_token", unique: true

  create_table "examinees", force: :cascade do |t|
    t.string   "name"
    t.string   "people_id"
    t.string   "student_id"
    t.string   "phone"
    t.string   "home_town"
    t.string   "hight_school"
    t.datetime "birthday",                                      null: false
    t.boolean  "graduated"
    t.string   "exam1",                  default: "math"
    t.string   "exam2",                  default: "literature"
    t.string   "exam3",                  default: "english"
    t.string   "exam4"
    t.integer  "graduate_score"
    t.integer  "year"
    t.integer  "cluster_id"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "email",                  default: "",           null: false
    t.string   "encrypted_password",     default: "",           null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "examinees", ["cluster_id"], name: "index_examinees_on_cluster_id"
  add_index "examinees", ["email"], name: "index_examinees_on_email", unique: true
  add_index "examinees", ["reset_password_token"], name: "index_examinees_on_reset_password_token", unique: true

  create_table "group_exams", force: :cascade do |t|
    t.string   "exam1"
    t.string   "exam2"
    t.string   "exam3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade do |t|
    t.integer  "university_id"
    t.integer  "group_exam_id"
    t.string   "name"
    t.integer  "year"
    t.integer  "benchmark1"
    t.integer  "benchmark2"
    t.integer  "benchmark3"
    t.datetime "deadline1"
    t.datetime "deadline2"
    t.datetime "deadline3"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "last_year_benchmark"
  end

  add_index "majors", ["group_exam_id"], name: "index_majors_on_group_exam_id"
  add_index "majors", ["university_id"], name: "index_majors_on_university_id"

  create_table "registers", force: :cascade do |t|
    t.integer  "examinee_id"
    t.integer  "major_id"
    t.boolean  "status"
    t.integer  "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "registers", ["examinee_id"], name: "index_registers_on_examinee_id"
  add_index "registers", ["major_id"], name: "index_registers_on_major_id"

  create_table "results", force: :cascade do |t|
    t.integer  "math",        default: 0
    t.integer  "literature",  default: 0
    t.integer  "english",     default: 0
    t.integer  "physical",    default: 0
    t.integer  "chemistry",   default: 0
    t.integer  "biological",  default: 0
    t.integer  "history",     default: 0
    t.integer  "geography",   default: 0
    t.integer  "examinee_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "results", ["examinee_id"], name: "index_results_on_examinee_id"

  create_table "talent_points", force: :cascade do |t|
    t.integer  "examinee_id"
    t.integer  "university_id"
    t.string   "tal_name"
    t.integer  "tal_point"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "talent_points", ["examinee_id"], name: "index_talent_points_on_examinee_id"
  add_index "talent_points", ["university_id"], name: "index_talent_points_on_university_id"

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
