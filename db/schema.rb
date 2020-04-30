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

ActiveRecord::Schema.define(version: 2020_04_28_163349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "state"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ets", force: :cascade do |t|
    t.bigint "timeline_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_ets_on_event_id"
    t.index ["timeline_id"], name: "index_ets_on_timeline_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "city_id"
    t.string "instance_type"
    t.string "instance_id"
    t.string "snippet"
    t.string "details"
    t.date "date"
    t.string "scale"
    t.string "link"
    t.string "imageUrl"
    t.string "imageText"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_events_on_city_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.date "deathday"
    t.bigint "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_people_on_city_id"
  end

  create_table "timelines", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.string "picture"
    t.bigint "user_id", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_timelines_on_person_id"
    t.index ["user_id"], name: "index_timelines_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "firebase_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "ets", "events"
  add_foreign_key "ets", "timelines"
  add_foreign_key "events", "cities"
  add_foreign_key "events", "users"
  add_foreign_key "people", "cities"
  add_foreign_key "timelines", "people"
  add_foreign_key "timelines", "users"
end
