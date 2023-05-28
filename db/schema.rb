# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_27_225552) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "customer_profile_ratings", force: :cascade do |t|
    t.bigint "professional_profile_id", null: false
    t.bigint "customer_profile_id", null: false
    t.bigint "task_id", null: false
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_profile_id"], name: "index_customer_profile_ratings_on_customer_profile_id"
    t.index ["professional_profile_id"], name: "index_customer_profile_ratings_on_professional_profile_id"
    t.index ["task_id"], name: "index_customer_profile_ratings_on_task_id"
  end

  create_table "customer_profiles", force: :cascade do |t|
    t.string "picture"
    t.string "document_number", null: false
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_customer_profiles_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "customer_profile_id", null: false
    t.bigint "professional_profile_id", null: false
    t.integer "amount"
    t.bigint "proposal_id", null: false
    t.bigint "task_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_profile_id"], name: "index_orders_on_customer_profile_id"
    t.index ["professional_profile_id"], name: "index_orders_on_professional_profile_id"
    t.index ["proposal_id"], name: "index_orders_on_proposal_id"
    t.index ["task_id"], name: "index_orders_on_task_id"
  end

  create_table "professional_contracts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "contract_time"
    t.bigint "professional_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professional_profile_id"], name: "index_professional_contracts_on_professional_profile_id"
    t.index ["user_id"], name: "index_professional_contracts_on_user_id"
  end

  create_table "professional_profile_ratings", force: :cascade do |t|
    t.bigint "professional_profile_id", null: false
    t.bigint "customer_profile_id", null: false
    t.bigint "task_id", null: false
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_profile_id"], name: "index_professional_profile_ratings_on_customer_profile_id"
    t.index ["professional_profile_id"], name: "index_professional_profile_ratings_on_professional_profile_id"
    t.index ["task_id"], name: "index_professional_profile_ratings_on_task_id"
  end

  create_table "professional_profiles", force: :cascade do |t|
    t.string "picture"
    t.string "name", null: false
    t.string "document_number", null: false
    t.bigint "user_id", null: false
    t.string "cv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_professional_profiles_on_user_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.integer "amount"
    t.bigint "task_id", null: false
    t.bigint "professional_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professional_profile_id"], name: "index_proposals_on_professional_profile_id"
    t.index ["task_id"], name: "index_proposals_on_task_id"
  end

  create_table "task_categories", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "raw_description"
    t.text "description"
    t.bigint "task_category_id", null: false
    t.bigint "customer_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_profile_id"], name: "index_tasks_on_customer_profile_id"
    t.index ["task_category_id"], name: "index_tasks_on_task_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "customer_profile_ratings", "customer_profiles"
  add_foreign_key "customer_profile_ratings", "professional_profiles"
  add_foreign_key "customer_profile_ratings", "tasks"
  add_foreign_key "customer_profiles", "users"
  add_foreign_key "orders", "customer_profiles"
  add_foreign_key "orders", "professional_profiles"
  add_foreign_key "orders", "proposals"
  add_foreign_key "orders", "tasks"
  add_foreign_key "professional_contracts", "professional_profiles"
  add_foreign_key "professional_contracts", "users"
  add_foreign_key "professional_profile_ratings", "customer_profiles"
  add_foreign_key "professional_profile_ratings", "professional_profiles"
  add_foreign_key "professional_profile_ratings", "tasks"
  add_foreign_key "professional_profiles", "users"
  add_foreign_key "proposals", "professional_profiles"
  add_foreign_key "proposals", "tasks"
  add_foreign_key "tasks", "customer_profiles"
  add_foreign_key "tasks", "task_categories"
end
