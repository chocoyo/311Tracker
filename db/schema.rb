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

ActiveRecord::Schema.define(version: 2020_10_16_031439) do

  create_table "calls", force: :cascade do |t|
    t.datetime "call_time"
    t.integer "service_area_id", null: false
    t.integer "service_request_id", null: false
    t.integer "ward_id", null: false
    t.integer "neighbourhood_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["neighbourhood_id"], name: "index_calls_on_neighbourhood_id"
    t.index ["service_area_id"], name: "index_calls_on_service_area_id"
    t.index ["service_request_id"], name: "index_calls_on_service_request_id"
    t.index ["ward_id"], name: "index_calls_on_ward_id"
  end

  create_table "neighbourhoods", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_areas", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_requests", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wards", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "calls", "neighbourhoods"
  add_foreign_key "calls", "service_areas"
  add_foreign_key "calls", "service_requests"
  add_foreign_key "calls", "wards"
end
