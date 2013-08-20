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

ActiveRecord::Schema.define(version: 20130820032156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: true do |t|
    t.integer  "tripId"
    t.string   "flightTo"
    t.string   "flightFrom"
    t.integer  "datetimeDepart"
    t.integer  "datetimeArrive"
    t.float    "cost"
    t.string   "provider"
    t.string   "class"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", force: true do |t|
    t.integer  "dateArrive"
    t.integer  "dateDepart"
    t.string   "name"
    t.string   "address"
    t.float    "cost"
    t.string   "provider"
    t.integer  "tripID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "dateStart"
    t.integer  "dateEnd"
    t.float    "cost"
    t.float    "minCost"
    t.float    "maxCost"
    t.string   "startDestination"
    t.string   "endDestination"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "preference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
