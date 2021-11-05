
ActiveRecord::Schema.define(version: 2021_11_04_191719) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "type_of_address"
    t.string "status"
    t.string "entity"
    t.string "number_and_street"
    t.string "suite_or_appartment"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id"
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "information_key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "building_id"
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.integer "batteryid"
    t.string "type_of_building"
    t.integer "number_of_floors_served"
    t.string "status"
    t.string "information"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.integer "user_id"
    t.string "company_name"
    t.string "company_headquarter"
    t.string "company_contact"
    t.string "company_email"
    t.string "company_description"
    t.string "service_technical_authority_name"
    t.string "technical_authority_phone"
    t.string "service_technical_authority_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id"
    t.string "customer_creation_date"
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.integer "columnid"
    t.integer "serial_number"
    t.string "model"
    t.string "type_of_building"
    t.string "status"
    t.date "date_of_commissioning"
    t.date "date_of_last_inspection"
    t.string "certificate_of_inspection"
    t.string "information"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "full_name_contact"
    t.string "company_name"
    t.string "email"
    t.string "phone"
    t.string "project_name"
    t.string "project_description"
    t.string "department"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "file"
    t.timestamp "request_date"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "amount_of_elevator"
    t.string "price_per_elevator"
    t.string "total_price_of_elevator"
    t.string "installation"
    t.string "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "residential"
    t.boolean "commercial"
    t.boolean "corporate"
    t.boolean "hybrid"
    t.string "building_type"
    t.string "string"
    t.string "integer"
    t.integer "user_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "user_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
