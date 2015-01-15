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

ActiveRecord::Schema.define(version: 20150115210855) do

  create_table "answers", force: true do |t|
    t.string   "content"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "email_address"
    t.string   "ip_address"
    t.string   "user_agent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["created_at"], name: "index_people_on_created_at", using: :btree

  create_table "questions", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["created_at"], name: "index_questions_on_created_at", using: :btree

  create_table "votes", force: true do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "year"
  end

  add_index "votes", ["answer_id"], name: "index_votes_on_answer_id", using: :btree
  add_index "votes", ["created_at"], name: "index_votes_on_created_at", using: :btree
  add_index "votes", ["person_id"], name: "index_votes_on_person_id", using: :btree
  add_index "votes", ["question_id"], name: "index_votes_on_question_id", using: :btree

end
