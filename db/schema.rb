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

ActiveRecord::Schema.define(:version => 20130608194737) do

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
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "city_id"
  end

  create_table "buildings", :force => true do |t|
    t.string   "address"
    t.string   "name"
    t.string   "website"
    t.string   "zip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.text     "management"
    t.string   "slug"
    t.integer  "area_id"
    t.integer  "city_id"
    t.integer  "neighborhood_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "status",          :default => "unapproved"
    t.integer  "reviews_count"
    t.boolean  "gmaps"
    t.integer  "user_id"
  end

  add_index "buildings", ["slug"], :name => "index_buildings_on_slug"

  create_table "cities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "slug"
    t.string   "state"
    t.integer  "population"
  end

  add_index "cities", ["slug"], :name => "index_cities_on_slug"

  create_table "contributions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "building_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "contributable_id"
    t.string   "contributable_type"
  end

  create_table "floorplans", :force => true do |t|
    t.string   "image"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "building_id"
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
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "area_id"
  end

  create_table "photos", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "building_id"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "rents", :force => true do |t|
    t.integer  "rent"
    t.integer  "floor"
    t.string   "beds"
    t.string   "baths"
    t.integer  "sqft"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "utilities"
    t.integer  "building_id"
    t.integer  "user_id"
    t.text     "notes"
    t.string   "unitnum"
    t.integer  "start"
    t.integer  "stop"
  end

  create_table "reviews", :force => true do |t|
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.integer  "noise_rating"
    t.integer  "neighborhood_rating"
    t.integer  "safety_rating"
    t.integer  "maintenance_rating"
    t.integer  "overall"
    t.text     "pros"
    t.text     "cons"
    t.integer  "user_id"
    t.integer  "management_rating"
    t.integer  "staff_rating"
    t.integer  "transportation_rating"
    t.integer  "amenities_rating"
    t.string   "identity"
    t.text     "msm"
    t.text     "nsn"
    t.text     "advice"
    t.integer  "building_id"
    t.text     "parktrans"
    t.text     "unitamen"
    t.string   "status",                :default => "unapproved"
    t.text     "flagged",               :default => "no"
    t.integer  "start"
    t.integer  "stop"
  end

  create_table "settings", :force => true do |t|
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "promotion",  :default => "yes"
    t.string   "survey",     :default => "yes"
    t.string   "moving",     :default => "yes"
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
    t.string   "status"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email", "provider", "uid"], :name => "index_users_on_identity", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
