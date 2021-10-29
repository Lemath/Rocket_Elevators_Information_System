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

ActiveRecord::Schema.define(version: 2021_10_29_172618) do

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
ActiveRecord::Schema.define(version: 2021_10_29_174731) do

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Userid"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: true
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "amount_of_elevator"
    t.string "price_per_elevator"
    t.string "total_price_of_elevator"
    t.string "installation"
    t.string "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  create_table "quote_pages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "residential"
    t.boolean "commercial"
    t.boolean "corporate"
    t.boolean "hybrid"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "number_appartments"
    t.integer "number_floors"
    t.integer "number_basement"
    t.integer "number_parking"
    t.integer "number_business"
    t.integer "number_cages"
    t.integer "number_corporation"
    t.integer "number_occupant"
    t.integer "number_hours"
    t.boolean "standard"
    t.boolean "premium"
    t.boolean "excelium"
    t.integer "elevator_amount"
    t.integer "elevator_unit_price"
    t.integer "elevator_total_price"
    t.integer "installation_fees"
    t.integer "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "numberappartments"
    t.integer "numberfloors"
    t.integer "numberbasement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
