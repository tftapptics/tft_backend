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

ActiveRecord::Schema.define(version: 2019_07_16_030812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "champion_origin_class_types", force: :cascade do |t|
    t.bigint "champion_id"
    t.bigint "origin_id"
    t.bigint "class_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["champion_id"], name: "index_champion_origin_class_types_on_champion_id"
    t.index ["class_type_id"], name: "index_champion_origin_class_types_on_class_type_id"
    t.index ["origin_id"], name: "index_champion_origin_class_types_on_origin_id"
  end

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.string "champion_thumbnail"
    t.integer "cost"
    t.integer "health", default: [], array: true
    t.integer "dmg"
    t.integer "armor"
    t.integer "mr"
    t.float "atk_spd"
    t.string "range"
    t.string "ability_thumbnail"
    t.jsonb "ability_info", default: "[{}]", null: false
    t.string "class_origin_names", default: [], array: true
    t.string "model_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_types", force: :cascade do |t|
    t.string "name"
    t.string "thumbnail"
    t.string "summary"
    t.string "tier_info", default: [], array: true
    t.integer "tiers", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origins", force: :cascade do |t|
    t.string "name"
    t.string "thumbnail"
    t.string "summary"
    t.string "tier_info", default: [], array: true
    t.integer "tiers", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "raw_items", force: :cascade do |t|
    t.string "name"
    t.string "thumbnail"
    t.string "stat_boost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_items", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "raw_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["raw_item_id"], name: "index_recipe_items_on_raw_item_id"
    t.index ["recipe_id"], name: "index_recipe_items_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "requirements"
    t.string "icon_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "champion_origin_class_types", "champions"
  add_foreign_key "champion_origin_class_types", "class_types"
  add_foreign_key "champion_origin_class_types", "origins"
  add_foreign_key "recipe_items", "raw_items"
  add_foreign_key "recipe_items", "recipes"
end
