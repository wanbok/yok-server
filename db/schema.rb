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

ActiveRecord::Schema.define(version: 20130831203356) do

  create_table "avatars", force: true do |t|
    t.integer  "user_id"
    t.string   "head"
    t.string   "head_back"
    t.string   "head_front"
    t.string   "torso"
    t.string   "torso_back"
    t.string   "torso_front"
    t.string   "leg"
    t.string   "leg_back"
    t.string   "leg_front"
    t.string   "whole_back"
    t.string   "accessary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avatars", ["user_id"], name: "index_avatars_on_user_id"

  create_table "groups", force: true do |t|
    t.integer  "teacher_id"
    t.integer  "size_of_team"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "logs", force: true do |t|
    t.integer  "user_id"
    t.integer  "curse_count"
    t.string   "diary"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["user_id"], name: "index_logs_on_user_id"

  create_table "missions", force: true do |t|
    t.integer  "group_id"
    t.string   "content"
    t.decimal  "duration",   precision: 20, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "missions", ["group_id"], name: "index_missions_on_group_id"

  create_table "teams", force: true do |t|
    t.integer  "group_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["group_id"], name: "index_teams_on_group_id"

  create_table "users", force: true do |t|
    t.string   "phonenumber",            default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.string   "role"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true
  add_index "users", ["phonenumber"], name: "index_users_on_phonenumber", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
