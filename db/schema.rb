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

ActiveRecord::Schema.define(:version => 20130501232322) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.string   "neighborhoods"
    t.string   "city"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "buildings", :force => true do |t|
    t.string   "address"
    t.float    "lat"
    t.float    "lon"
    t.string   "name"
    t.string   "neighborhood"
    t.integer  "floors"
    t.string   "description"
    t.string   "amenities"
    t.string   "website"
    t.integer  "units"
    t.integer  "city"
    t.integer  "zip"
    t.string   "state"
    t.integer  "built"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "area"
    t.string   "construction"
  end

  create_table "cities", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "neighborhoods"
    t.string   "name"
    t.integer  "neighborhood_id"
    t.string   "areas"
  end

  create_table "moves", :force => true do |t|
    t.date     "date"
    t.string   "budget"
    t.string   "neighborhoods"
    t.string   "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "neighborhoods", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.float    "lat"
    t.float    "lon"
    t.string   "description"
    t.string   "schools"
    t.string   "nightlife"
    t.string   "stores"
    t.string   "safety"
    t.string   "demographic"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "safety_score"
    t.integer  "recreation_score"
    t.string   "recreation"
    t.integer  "buildings"
    t.string   "city"
    t.string   "area"
  end

  create_table "reviews", :force => true do |t|
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "rent"
    t.string   "neighborhood"
    t.string   "nightlife"
    t.string   "management"
    t.string   "staff"
    t.string   "amenities"
    t.string   "pets"
    t.integer  "noise_rating"
    t.integer  "neighborhood_rating"
    t.string   "supermarket"
    t.string   "schools"
    t.integer  "safety_rating"
    t.integer  "building"
    t.string   "parking_rating"
    t.string   "parking"
    t.string   "maintenance"
    t.integer  "maintenance_rating"
    t.string   "construction"
    t.integer  "construction_rating"
    t.string   "noise"
    t.string   "people"
    t.string   "events"
    t.integer  "overall"
    t.string   "amenities_rating"
    t.string   "pros"
    t.string   "cons"
    t.integer  "bedrooms"
    t.integer  "floor"
    t.integer  "bathrooms"
    t.string   "view"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
