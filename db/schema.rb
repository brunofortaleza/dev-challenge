# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_16_140812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "installments", force: :cascade do |t|
    t.decimal "amount"
    t.date "deadline"
    t.bigint "loan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["loan_id"], name: "index_installments_on_loan_id"
  end

  create_table "loans", force: :cascade do |t|
    t.decimal "amount"
    t.integer "number_installments"
    t.decimal "interest_rate"
    t.bigint "requester_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["requester_id"], name: "index_loans_on_requester_id"
  end

  create_table "requesters", force: :cascade do |t|
    t.string "company_name"
    t.string "cnpj"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "installments", "loans"
  add_foreign_key "loans", "requesters"
end
