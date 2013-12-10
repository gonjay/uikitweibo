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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131210133233) do

  create_table "albums", :force => true do |t|
    t.integer  "user_id"
    t.string   "imageUrl"
    t.string   "useType"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "useFlag"
  end

  create_table "apks", :force => true do |t|
    t.string   "version"
    t.string   "downloadUrl"
    t.string   "netType"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "weibo_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "passages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.text     "images"
    t.string   "postUrl"
    t.string   "newsrecord"
    t.integer  "psgType"
    t.string   "tag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nickName"
    t.string   "avatarSrc"
    t.string   "genderStr"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "weibos", :force => true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.integer  "favorite"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "imgSrc"
  end

end
