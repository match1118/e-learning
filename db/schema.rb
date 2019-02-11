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

ActiveRecord::Schema.define(version: 20190208052736) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description"
    t.boolean "admin", default: false
  end

  create_table "lesson_words", force: :cascade do |t|
    t.integer "lesson_id_id"
    t.integer "word_id_id"
    t.integer "wordchoice_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id_id"], name: "index_lesson_words_on_lesson_id_id"
    t.index ["word_id_id"], name: "index_lesson_words_on_word_id_id"
    t.index ["wordchoice_id_id"], name: "index_lesson_words_on_wordchoice_id_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "user_id_id"
    t.integer "category_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id_id"], name: "index_lessons_on_category_id_id"
    t.index ["user_id_id"], name: "index_lessons_on_user_id_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "wordchoices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "word_id"
    t.boolean "correct", default: false
    t.index ["word_id", "created_at"], name: "index_wordchoices_on_word_id_and_created_at"
    t.index ["word_id"], name: "index_wordchoices_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id", "created_at"], name: "index_words_on_category_id_and_created_at"
    t.index ["category_id"], name: "index_words_on_category_id"
  end

end
