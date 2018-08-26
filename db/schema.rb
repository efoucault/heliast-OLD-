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

ActiveRecord::Schema.define(version: 2018_08_26_194313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "historiques", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "indecision_id"
    t.date "date_relance"
    t.string "status"
    t.date "date_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["indecision_id"], name: "index_historiques_on_indecision_id"
    t.index ["user_id"], name: "index_historiques_on_user_id"
  end

  create_table "indecisions", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.date "deadline"
    t.text "reponse"
    t.string "status"
    t.boolean "heliast_anonyme"
    t.boolean "indecis_anonyme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "indecis_id"
    t.bigint "heliast_id"
    t.bigint "reponse_indecis_id"
    t.bigint "reponse_heliast_id"
    t.index ["heliast_id"], name: "index_indecisions_on_heliast_id"
    t.index ["indecis_id"], name: "index_indecisions_on_indecis_id"
    t.index ["reponse_heliast_id"], name: "index_indecisions_on_reponse_heliast_id"
    t.index ["reponse_indecis_id"], name: "index_indecisions_on_reponse_indecis_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "titre"
    t.bigint "indecision_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["indecision_id"], name: "index_options_on_indecision_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "level"
    t.boolean "admin", default: false, null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "historiques", "indecisions"
  add_foreign_key "historiques", "users"
  add_foreign_key "indecisions", "options", column: "reponse_heliast_id"
  add_foreign_key "indecisions", "options", column: "reponse_indecis_id"
  add_foreign_key "indecisions", "users", column: "heliast_id"
  add_foreign_key "indecisions", "users", column: "indecis_id"
  add_foreign_key "options", "indecisions"
end
