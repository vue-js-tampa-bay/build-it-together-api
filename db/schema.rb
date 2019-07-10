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

ActiveRecord::Schema.define(version: 2019_07_10_212222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tacos", force: :cascade do |t|
    t.string "name"
    t.string "base"
    t.boolean "is_vegetarian"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tacos_toppings", force: :cascade do |t|
    t.bigint "taco_id", null: false
    t.bigint "topping_id", null: false
    t.index ["taco_id"], name: "index_tacos_toppings_on_taco_id"
    t.index ["topping_id"], name: "index_tacos_toppings_on_topping_id"
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "tacos_toppings", "tacos"
  add_foreign_key "tacos_toppings", "toppings"
end
