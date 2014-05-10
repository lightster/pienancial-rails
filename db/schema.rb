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

ActiveRecord::Schema.define(version: 20140510180237) do

  create_table "pie_piece_transactions", force: true do |t|
    t.integer  "pie_id"
    t.integer  "pie_piece_id"
    t.integer  "transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pie_piece_transactions", ["pie_id"], name: "index_pie_piece_transactions_on_pie_id"
  add_index "pie_piece_transactions", ["pie_piece_id"], name: "index_pie_piece_transactions_on_pie_piece_id"
  add_index "pie_piece_transactions", ["transaction_id"], name: "index_pie_piece_transactions_on_transaction_id"

  create_table "pie_pieces", force: true do |t|
    t.integer  "pie_id"
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

  add_index "pies", ["user_id"], name: "index_pies_on_user_id"

  create_table "transactions", force: true do |t|
    t.integer  "user_id"
    t.date     "date"
    t.decimal  "amount",      precision: 12, scale: 2
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
