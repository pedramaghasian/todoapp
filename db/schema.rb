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

ActiveRecord::Schema.define(version: 2020_02_01_174555) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.text "about"
  end

  create_table "foods", force: :cascade do |t|
    t.string "foodname"
    t.text "aboutfood"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.text "family"
  end

  create_table "todos", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

end
