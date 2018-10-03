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

ActiveRecord::Schema.define(version: 2018_10_03_015441) do

  create_table "air_temperature_sensors", force: :cascade do |t|
    t.string "value"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_air_temperature_sensors_on_grow_id"
  end

  create_table "ambient_light_bed_sensors", force: :cascade do |t|
    t.string "value"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_ambient_light_bed_sensors_on_grow_id"
  end

  create_table "ambient_light_canopy_sensors", force: :cascade do |t|
    t.string "value"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_ambient_light_canopy_sensors_on_grow_id"
  end

  create_table "ec_sensors", force: :cascade do |t|
    t.string "value"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_ec_sensors_on_grow_id"
  end

  create_table "grows", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "grow_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_grows_on_user_id"
  end

  create_table "humidity_sensors", force: :cascade do |t|
    t.string "value"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_humidity_sensors_on_grow_id"
  end

  create_table "light_schedules", force: :cascade do |t|
    t.integer "grow_id"
    t.integer "lights_on"
    t.integer "lights_off"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_light_schedules_on_grow_id"
  end

  create_table "ph_sensors", force: :cascade do |t|
    t.string "value"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_ph_sensors_on_grow_id"
  end

  create_table "timelapse_photos", force: :cascade do |t|
    t.string "file"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_timelapse_photos_on_grow_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_temperature_sensors", force: :cascade do |t|
    t.string "value"
    t.integer "grow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grow_id"], name: "index_water_temperature_sensors_on_grow_id"
  end

end
