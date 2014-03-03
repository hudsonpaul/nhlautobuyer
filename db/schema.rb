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

ActiveRecord::Schema.define(version: 20140303225520) do

  create_table "auto_bids", force: true do |t|
    t.integer  "trade_id"
    t.integer  "max_bid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ea_cards", force: true do |t|
    t.string   "name"
    t.integer  "card_db_id"
    t.integer  "player_type_id"
    t.integer  "auto_buy_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ea_cards", ["player_type_id"], name: "index_ea_cards_on_player_type_id"

  create_table "ea_sessions", force: true do |t|
    t.string   "session_key"
    t.integer  "user_id"
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ea_users", force: true do |t|
    t.integer  "ea_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filters", force: true do |t|
    t.string   "name"
    t.integer  "auto_buy_at"
    t.integer  "search_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "filters", ["search_id"], name: "index_filters_on_search_id"

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.integer  "ea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_types", force: true do |t|
    t.string   "name"
    t.integer  "ea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.integer  "ea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.string   "player_type"
    t.string   "player_name"
    t.string   "status"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "name"
    t.integer  "team_id"
    t.integer  "position_id"
    t.integer  "style_id"
    t.string   "bin_filter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_type_id", default: 0
    t.boolean  "use_autobuyer"
    t.integer  "min_bin"
    t.integer  "min_bid"
    t.integer  "max_bid"
    t.integer  "league_id"
  end

  add_index "searches", ["position_id"], name: "index_searches_on_position_id"
  add_index "searches", ["style_id"], name: "index_searches_on_style_id"
  add_index "searches", ["team_id"], name: "index_searches_on_team_id"

  create_table "styles", force: true do |t|
    t.string   "name"
    t.integer  "ea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "ea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_usable",  default: true
  end

end
