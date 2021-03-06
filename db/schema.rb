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

ActiveRecord::Schema.define(version: 20170706172502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "article_items", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "article_items_translations", force: :cascade do |t|
    t.integer  "article_item_id"
    t.integer  "language"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "company_type_translations", force: :cascade do |t|
    t.integer  "company_type_id"
    t.integer  "language"
    t.string   "form"
    t.text     "capital"
    t.text     "heads"
    t.text     "responsibility"
    t.text     "management"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "company_types", force: :cascade do |t|
    t.string   "form"
    t.text     "capital"
    t.text     "heads"
    t.text     "responsibility"
    t.text     "management"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "phone"
    t.string   "skype"
    t.string   "mail"
    t.string   "viber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_pack_comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_pack_item_price_packs", force: :cascade do |t|
    t.integer  "price_pack_item_id", null: false
    t.integer  "price_pack_id",      null: false
    t.boolean  "value"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "price_pack_item_translations", force: :cascade do |t|
    t.integer  "price_pack_item_id"
    t.integer  "language"
    t.text     "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "price_pack_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order"
  end

  create_table "price_packs", force: :cascade do |t|
    t.string   "name",                      null: false
    t.float    "price",       default: 0.0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "order_index"
  end

  create_table "price_translations", force: :cascade do |t|
    t.integer  "price_id"
    t.integer  "language"
    t.string   "item"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prices", force: :cascade do |t|
    t.string   "item"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "from"
    t.text     "body"
    t.integer  "status",     default: 0
    t.text     "address"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "requisites", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rich_rich_files", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        default: "file"
  end

  create_table "service_item_translations", force: :cascade do |t|
    t.integer  "service_item_id"
    t.integer  "language"
    t.string   "service_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "service_items", force: :cascade do |t|
    t.string   "service_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "whies", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "why_translations", force: :cascade do |t|
    t.integer  "why_id"
    t.integer  "language"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
