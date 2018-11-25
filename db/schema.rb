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

ActiveRecord::Schema.define(version: 20181124203718) do

  create_table "content_managers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "offer_get_products", force: :cascade do |t|
    t.integer  "free_quantity"
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["product_id"], name: "index_offer_get_products_on_product_id"
  end

  create_table "offer_get_products_offers", id: false, force: :cascade do |t|
    t.integer "offer_id",             null: false
    t.integer "offer_get_product_id", null: false
    t.index ["offer_id", "offer_get_product_id"], name: "offer_on_offer_get_products_id"
  end

  create_table "offer_totals", force: :cascade do |t|
    t.decimal  "percentage_discount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "offer_totals_offers", id: false, force: :cascade do |t|
    t.integer "offer_id",       null: false
    t.integer "offer_total_id", null: false
    t.index ["offer_id", "offer_total_id"], name: "offer_on_offer_total_id"
  end

  create_table "offer_units_prices", force: :cascade do |t|
    t.integer  "needed_amount"
    t.decimal  "fixed_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "offer_units_prices_offers", id: false, force: :cascade do |t|
    t.integer "offer_id",             null: false
    t.integer "offer_units_price_id", null: false
    t.index ["offer_id", "offer_units_price_id"], name: "offer_on_offer_units_price_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.integer  "product_quantity"
    t.string   "description"
    t.integer  "content_manager_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["content_manager_id"], name: "index_offers_on_content_manager_id"
  end

  create_table "offers_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "offer_id",   null: false
    t.index ["product_id", "offer_id"], name: "product_on_offer_id"
  end

  create_table "offers_shopping_carts", id: false, force: :cascade do |t|
    t.integer "offer_id",         null: false
    t.integer "shopping_cart_id", null: false
    t.index ["shopping_cart_id", "offer_id"], name: "shopping_cart_on_offer_id"
  end

  create_table "products", id: false, force: :cascade do |t|
    t.string   "sku",                null: false
    t.string   "name"
    t.string   "category"
    t.decimal  "price"
    t.string   "brand"
    t.integer  "stock"
    t.string   "meassure_type"
    t.decimal  "weight"
    t.string   "description"
    t.integer  "content_manager_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["content_manager_id"], name: "index_products_on_content_manager_id"
    t.index ["sku"], name: "index_products_on_sku", unique: true
  end

  create_table "products_shopping_carts", id: false, force: :cascade do |t|
    t.integer "product_id",       null: false
    t.integer "shopping_cart_id", null: false
    t.index ["shopping_cart_id", "product_id"], name: "shopping_cart_on_product_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.string   "session"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
