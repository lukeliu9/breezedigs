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

ActiveRecord::Schema.define(:version => 20130506032408) do

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
    t.text     "neighborhoods"
    t.string   "city"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "buildings", :force => true do |t|
    t.string   "address"
    t.decimal  "lat"
    t.decimal  "lon"
    t.string   "name"
    t.string   "neighborhood"
    t.integer  "floors"
    t.text     "description"
    t.text     "amenities"
    t.string   "website"
    t.integer  "units"
    t.string   "city"
    t.string   "zip"
    t.integer  "built"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "area"
    t.text     "construction"
    t.text     "management"
    t.text     "transportation"
    t.string   "slug"
    t.text     "pets"
  end

  add_index "buildings", ["slug"], :name => "index_buildings_on_slug"

  create_table "cities", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "neighborhoods"
    t.string   "name"
    t.integer  "neighborhood_id"
    t.string   "areas"
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "moves", :force => true do |t|
    t.date     "date"
    t.text     "neighborhoods"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "budget_low"
    t.integer  "budget_high"
  end

  create_table "neighborhoods", :force => true do |t|
    t.string   "name"
    t.decimal  "lat"
    t.decimal  "lon"
    t.text     "description"
    t.text     "schools"
    t.text     "nightlife"
    t.text     "stores"
    t.text     "safety"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "recreation"
    t.text     "buildings"
    t.string   "city"
    t.string   "area"
  end

  create_table "reviews", :force => true do |t|
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "rent"
    t.string   "neighborhood"
    t.text     "nightlife"
    t.text     "management"
    t.text     "staff"
    t.text     "amenities"
    t.integer  "noise_rating"
    t.integer  "neighborhood_rating"
    t.string   "supermarket"
    t.text     "schools"
    t.integer  "safety_rating"
    t.string   "building"
    t.text     "parking"
    t.text     "maintenance"
    t.integer  "maintenance_rating"
    t.text     "construction"
    t.text     "noise"
    t.text     "people"
    t.integer  "overall"
    t.text     "pros"
    t.text     "cons"
    t.integer  "floor"
    t.text     "view"
    t.integer  "user_id"
    t.integer  "management_rating"
    t.integer  "staff_rating"
    t.text     "safety"
    t.text     "transportation"
    t.integer  "transportation_rating"
    t.integer  "amenities_rating"
    t.integer  "beds"
    t.integer  "baths"
    t.string   "identity"
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
