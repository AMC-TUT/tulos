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

ActiveRecord::Schema.define(version: 20140707112915) do

  create_table "answers", force: true do |t|
    t.integer  "denominator"
    t.integer  "numerator"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["level_id"], name: "index_answers_on_level_id", using: :btree

  create_table "game_events", force: true do |t|
    t.integer  "user_id"
    t.integer  "world_id"
    t.integer  "movement"
    t.integer  "health"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_events", ["user_id"], name: "index_game_events_on_user_id", using: :btree
  add_index "game_events", ["world_id"], name: "index_game_events_on_world_id", using: :btree

  create_table "game_level_answers", force: true do |t|
    t.integer  "solved"
    t.integer  "accuracy"
    t.integer  "x"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_level_id"
  end

  add_index "game_level_answers", ["game_level_id"], name: "index_game_level_answers_on_game_level_id", using: :btree

  create_table "game_levels", force: true do |t|
    t.integer  "level_format"
    t.integer  "solved"
    t.integer  "skip"
    t.integer  "trap"
    t.integer  "jumps"
    t.integer  "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_event_id"
    t.integer  "level_type"
  end

  add_index "game_levels", ["game_event_id"], name: "index_game_levels_on_game_event_id", using: :btree

  create_table "levels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "world_id"
    t.integer  "level_type"
    t.integer  "level_format"
  end

  add_index "levels", ["world_id"], name: "index_levels_on_world_id", using: :btree

  create_table "numbers", force: true do |t|
    t.integer  "denominator"
    t.integer  "numerator"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "numbers", ["level_id"], name: "index_numbers_on_level_id", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "traps", force: true do |t|
    t.integer  "denominator"
    t.integer  "numerator"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "traps", ["level_id"], name: "index_traps_on_level_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "teacher",                default: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "worlds", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "player"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "public",      default: true
    t.integer  "user_id"
    t.integer  "play_count",  default: 0
  end

  add_index "worlds", ["play_count"], name: "index_worlds_on_play_count", using: :btree
  add_index "worlds", ["user_id"], name: "index_worlds_on_user_id", using: :btree

end
