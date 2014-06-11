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

ActiveRecord::Schema.define(version: 20140611135019) do

  create_table "pie_piece_transaction_splits", force: true do |t|
    t.integer  "pie_id"
    t.integer  "pie_piece_id"
    t.integer  "transaction_split_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pie_piece_transaction_splits", ["pie_id"], name: "index_pie_piece_transaction_splits_on_pie_id"
  add_index "pie_piece_transaction_splits", ["pie_piece_id"], name: "index_pie_piece_transaction_splits_on_pie_piece_id"
  add_index "pie_piece_transaction_splits", ["transaction_split_id"], name: "index_pie_piece_transaction_splits_on_transaction_split_id"

  create_table "pie_pieces", force: true do |t|
    t.integer  "pie_id",     null: false
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pie_pieces", ["pie_id"], name: "index_pie_pieces_on_pie_id"

  create_table "pies", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.boolean  "is_required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pies", ["user_id", "title"], name: "index_pies_on_user_id_and_title", unique: true
  add_index "pies", ["user_id"], name: "index_pies_on_user_id"

  create_table "transaction_records", force: true do |t|
    t.integer  "user_id"
    t.date     "transaction_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transaction_records", ["user_id"], name: "index_transaction_records_on_user_id"

  create_table "transaction_splits", force: true do |t|
    t.integer  "transaction_record_id"
    t.decimal  "amount",                precision: 12, scale: 2
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transaction_splits", ["transaction_record_id"], name: "index_transaction_splits_on_transaction_record_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
