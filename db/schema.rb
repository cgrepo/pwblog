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

ActiveRecord::Schema.define(version: 20170222153555) do

  create_table "code_tasks", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "done"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "codebranch"
  end

  add_index "code_tasks", ["user_id"], name: "index_code_tasks_on_user_id"

  create_table "err_brands", force: :cascade do |t|
    t.string   "genus"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "icorrections", force: :cascade do |t|
    t.string   "title"
    t.string   "genus"
    t.text     "description"
    t.integer  "User_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "icorrections", ["User_id"], name: "index_icorrections_on_User_id"

  create_table "issues", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "solution"
    t.integer  "User_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "issues", ["User_id"], name: "index_issues_on_User_id"

  create_table "p_reminders", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "solution"
    t.string   "genus"
    t.string   "subgenus"
    t.integer  "User_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "p_reminders", ["User_id"], name: "index_p_reminders_on_User_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
