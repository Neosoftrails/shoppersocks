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

ActiveRecord::Schema.define(:version => 20120925094007) do

  create_table "about_us", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "boots", :force => true do |t|
    t.string   "name"
    t.string   "bootlargeimage"
    t.string   "bootsmallimage"
    t.string   "thumbimage"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "bootlargeimage_file_name"
    t.string   "bootlargeimage_content_type"
    t.integer  "bootlargeimage_file_size"
    t.datetime "bootlargeimage_updated_at"
    t.string   "bootthumbimage_file_name"
    t.string   "bootthumbimage_content_type"
    t.integer  "bootthumbimage_file_size"
    t.datetime "bootthumbimage_updated_at"
    t.string   "bootsmallimage_file_name"
    t.string   "bootsmallimage_content_type"
    t.integer  "bootsmallimage_file_size"
    t.datetime "bootsmallimage_updated_at"
  end

  create_table "contact_us", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "enquiry"
    t.integer  "telephone"
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "productname"
    t.float    "price"
    t.string   "largebootimage"
    t.string   "smallbootimage"
    t.integer  "boot_id"
    t.integer  "sock_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "products", ["boot_id"], :name => "index_products_on_boot_id"
  add_index "products", ["sock_id"], :name => "index_products_on_sock_id"

  create_table "socks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.integer  "admin"
  end

end
