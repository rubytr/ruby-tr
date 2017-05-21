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

ActiveRecord::Schema.define(version: 20170520185057) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "companies", force: :cascade do |t|
    t.string  "title"
    t.string  "sector"
    t.string  "url"
    t.string  "github"
    t.string  "twitter"
    t.string  "city"
    t.boolean "published", default: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.text     "description"
    t.string   "link"
    t.string   "location"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "published",   default: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "target_id",       null: false
    t.string   "target_type",     null: false
    t.integer  "notifiable_id",   null: false
    t.string   "notifiable_type", null: false
    t.string   "key",             null: false
    t.integer  "group_id"
    t.string   "group_type"
    t.integer  "group_owner_id"
    t.integer  "notifier_id"
    t.string   "notifier_type"
    t.text     "parameters"
    t.datetime "opened_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notifications", ["group_owner_id"], name: "index_notifications_on_group_owner_id"
  add_index "notifications", ["group_type", "group_id"], name: "index_notifications_on_group_type_and_group_id"
  add_index "notifications", ["notifiable_type", "notifiable_id"], name: "index_notifications_on_notifiable_type_and_notifiable_id"
  add_index "notifications", ["notifier_type", "notifier_id"], name: "index_notifications_on_notifier_type_and_notifier_id"
  add_index "notifications", ["target_type", "target_id"], name: "index_notifications_on_target_type_and_target_id"

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "target_id",                               null: false
    t.string   "target_type",                             null: false
    t.string   "key",                                     null: false
    t.boolean  "subscribing",              default: true, null: false
    t.boolean  "subscribing_to_email",     default: true, null: false
    t.datetime "subscribed_at"
    t.datetime "unsubscribed_at"
    t.datetime "subscribed_to_email_at"
    t.datetime "unsubscribed_to_email_at"
    t.text     "optional_targets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["key"], name: "index_subscriptions_on_key"
  add_index "subscriptions", ["target_type", "target_id", "key"], name: "index_subscriptions_on_target_type_and_target_id_and_key", unique: true
  add_index "subscriptions", ["target_type", "target_id"], name: "index_subscriptions_on_target_type_and_target_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "github"
    t.string   "twitter"
    t.string   "web"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gravatar_url"
    t.string   "uid"
    t.string   "provider"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

end
