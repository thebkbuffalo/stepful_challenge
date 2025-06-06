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

ActiveRecord::Schema[7.1].define(version: 2025_05_26_230237) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_reviews", force: :cascade do |t|
    t.bigint "coach_id", null: false
    t.bigint "student_id", null: false
    t.bigint "appointment_id", null: false
    t.integer "rating", null: false
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_appointment_reviews_on_appointment_id"
    t.index ["coach_id"], name: "index_appointment_reviews_on_coach_id"
    t.index ["student_id"], name: "index_appointment_reviews_on_student_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "coach_id", null: false
    t.bigint "student_id"
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.boolean "booked", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_appointments_on_coach_id"
    t.index ["student_id"], name: "index_appointments_on_student_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_coaches_on_email", unique: true
    t.index ["first_name"], name: "index_coaches_on_first_name"
    t.index ["last_name"], name: "index_coaches_on_last_name"
    t.index ["phone_number"], name: "index_coaches_on_phone_number", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["first_name"], name: "index_students_on_first_name"
    t.index ["last_name"], name: "index_students_on_last_name"
    t.index ["phone_number"], name: "index_students_on_phone_number", unique: true
  end

  add_foreign_key "appointment_reviews", "appointments"
  add_foreign_key "appointment_reviews", "coaches"
  add_foreign_key "appointment_reviews", "students"
  add_foreign_key "appointments", "coaches"
  add_foreign_key "appointments", "students"
end
