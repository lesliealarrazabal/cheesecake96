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

ActiveRecord::Schema.define(version: 20180720184207) do

  create_table "answers", force: :cascade do |t|
    t.text    "content"
    t.integer "question_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "categories_questions", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "question_id"
  end

  add_index "categories_questions", ["category_id", "question_id"], name: "index_categories_questions_on_category_id_and_question_id"

  create_table "onboardings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "project_id"
  end

  add_index "onboardings", ["user_id", "project_id"], name: "index_onboardings_on_user_id_and_project_id"

  create_table "onboardings_providers", id: false, force: :cascade do |t|
    t.integer "onboarding_id"
    t.integer "provider_id"
  end

  add_index "onboardings_providers", ["onboarding_id", "provider_id"], name: "index_onboardings_providers_on_onboarding_id_and_provider_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "cover"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "projects_questions", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "question_id"
  end

  add_index "projects_questions", ["project_id", "question_id"], name: "index_projects_questions_on_project_id_and_question_id"

  create_table "providers", force: :cascade do |t|
    t.string "name"
  end

  create_table "providers_users", id: false, force: :cascade do |t|
    t.integer "provider_id"
    t.integer "user_id"
  end

  add_index "providers_users", ["provider_id", "user_id"], name: "index_providers_users_on_provider_id_and_user_id"

  create_table "questions", force: :cascade do |t|
    t.text "title"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id",                default: 1
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "birthdate"
    t.string   "phone_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"

end
