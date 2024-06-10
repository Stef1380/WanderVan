

ActiveRecord::Schema[7.1].define(version: 2024_06_10_132807) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string "location"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    
    
  create_table "bookings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "total_price"
    t.string "statut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vans", force: :cascade do |t|
    t.string "brand"
    t.integer "km"
    t.text "description"
    t.integer "number_of_seat"
    t.integer "price"
    t.string "categorie"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
