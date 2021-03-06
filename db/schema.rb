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

ActiveRecord::Schema.define(version: 2020_12_06_173910) do

  create_table "feedbacks", force: :cascade do |t|
    t.float "courseDis"
    t.float "homeDis"
    t.float "majorDis"
    t.float "gradDis"
    t.float "involvDot"
    t.float "rating"
  end

  create_table "study_rooms", force: :cascade do |t|
    t.integer "rank"
    t.integer "capacity"
    t.integer "current_number_student"
    t.string "major"
    t.string "description"
    t.string "zoom_link"
    t.float "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string "subject"
    t.string "number"
    t.string "grade"
    t.string "availability"
    t.string "pay"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tutors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "category1"
    t.integer "category2"
    t.integer "category3"
    t.integer "category4"
    t.integer "category5"
    t.integer "category6"
    t.integer "category7"
    t.integer "category8"
    t.integer "category9"
    t.integer "category10"
    t.integer "category11"
    t.integer "category12"
    t.string "name"
    t.integer "gradYear"
    t.string "subject1"
    t.string "course1"
    t.string "subject2"
    t.string "course2"
    t.string "subject3"
    t.string "course3"
    t.string "subject4"
    t.string "course4"
    t.string "subject5"
    t.string "course5"
    t.string "hometown"
    t.string "club1"
    t.string "club2"
    t.string "club3"
    t.string "club4"
    t.string "club5"
    t.string "major"
    t.integer "study_room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["study_room_id"], name: "index_users_on_study_room_id"
  end

end
