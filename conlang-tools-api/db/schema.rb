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

ActiveRecord::Schema.define(version: 20170114213208) do

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "languages_phonemes", id: false, force: :cascade do |t|
    t.integer "language_id", null: false
    t.integer "phoneme_id",  null: false
  end

  add_index "languages_phonemes", ["language_id", "phoneme_id"], name: "index_languages_phonemes_on_language_id_and_phoneme_id"
  add_index "languages_phonemes", ["phoneme_id", "language_id"], name: "index_languages_phonemes_on_phoneme_id_and_language_id"

  create_table "phonemes", force: :cascade do |t|
    t.string   "ipa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "voice"
    t.string   "place"
    t.string   "manner"
    t.boolean  "consonant"
    t.boolean  "front"
    t.boolean  "high"
    t.boolean  "syllabic"
    t.boolean  "low"
    t.boolean  "back"
    t.boolean  "tense"
  end

  create_table "syllables", force: :cascade do |t|
    t.integer  "language_id"
    t.string   "pattern"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "syllables", ["language_id"], name: "index_syllables_on_language_id"

  create_table "words", force: :cascade do |t|
    t.string   "form"
    t.string   "translation"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "words", ["language_id"], name: "index_words_on_language_id"

end
