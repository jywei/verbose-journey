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

ActiveRecord::Schema.define(version: 20160531101314) do

  create_table "admin_abouts", force: true do |t|
    t.string   "title_area_1"
    t.text     "content_area_1"
    t.string   "title_area_2"
    t.text     "content_area_2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_area_en_1"
    t.text     "content_area_en_1"
    t.string   "title_area_en_2"
    t.text     "content_area_en_2"
  end

  create_table "admin_areas", force: true do |t|
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "google_map_x"
    t.float    "google_map_y"
  end

  create_table "admin_brands", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "main_visual"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cn_name"
    t.boolean  "is_customization"
    t.string   "slogan"
    t.string   "slogan_by"
    t.string   "title_1"
    t.string   "description_1"
    t.string   "title_2"
    t.string   "description_2"
    t.string   "image_of_brand"
    t.string   "image_of_logo"
    t.integer  "sort"
    t.boolean  "is_public"
    t.string   "url_name"
    t.boolean  "show_products_read_more", default: false
    t.string   "main_visual2"
    t.string   "og_title"
    t.text     "og_description"
    t.string   "og_image"
  end

  create_table "admin_contacts", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_histories", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort"
  end

  create_table "admin_images", force: true do |t|
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_infos", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "link_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_media", force: true do |t|
    t.string   "file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_news", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "main_visual"
    t.boolean  "is_public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_of_news"
    t.string   "main_visual2"
    t.boolean  "is_order_form"
    t.string   "news_link"
    t.string   "title_en"
    t.text     "content_en"
  end

  create_table "admin_og_main_pages", force: true do |t|
    t.string   "home_title"
    t.text     "home_description"
    t.string   "home_image"
    t.string   "about_title"
    t.text     "about_description"
    t.string   "about_image"
    t.string   "contact_title"
    t.text     "contact_description"
    t.string   "contact_image"
    t.string   "store_title"
    t.text     "store_description"
    t.string   "store_image"
    t.string   "news_title"
    t.text     "news_description"
    t.string   "news_image"
    t.string   "brand_title"
    t.text     "brand_description"
    t.string   "brand_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "home_image2"
    t.string   "home_image3"
    t.string   "about_image2"
    t.string   "about_image3"
    t.string   "contact_image2"
    t.string   "contact_image3"
    t.string   "store_image2"
    t.string   "store_image3"
    t.string   "news_image2"
    t.string   "news_image3"
    t.string   "brand_image2"
    t.string   "brand_image3"
  end

  create_table "admin_product_images", force: true do |t|
    t.integer  "product_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_product_stores", force: true do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_products", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "main_visual"
    t.integer  "price"
    t.integer  "stock"
    t.boolean  "is_public"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
    t.text     "title2"
    t.string   "url_name"
    t.boolean  "is_show_where_to_buy", default: false
  end

  create_table "admin_site_config_images", force: true do |t|
    t.integer  "site_config_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort"
    t.boolean  "is_phone",       default: false
  end

  create_table "admin_site_configs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "name"
    t.string   "tax_id"
    t.string   "phone"
    t.string   "fax"
    t.string   "address"
    t.string   "email"
    t.string   "website_url"
    t.string   "facebook_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "main_visual_logo_is_show", default: false
    t.boolean  "brands_list_logo_is_show", default: false
    t.integer  "slide_speed",              default: 4000
    t.text     "privacy_policy"
    t.text     "terms_of_service"
  end

  create_table "admin_staffs", force: true do |t|
    t.string   "name"
    t.string   "office"
    t.string   "slogan"
    t.text     "content"
    t.integer  "about_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slogan2"
    t.string   "photo"
  end

  create_table "admin_stores", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "sort"
    t.boolean  "is_public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "area_id"
    t.float    "google_map_x"
    t.float    "google_map_y"
  end

  create_table "admin_stories", force: true do |t|
    t.string   "title"
    t.string   "title2"
    t.text     "content"
    t.string   "button_text"
    t.string   "link_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_en"
    t.text     "content_en"
    t.string   "title_en_2"
    t.text     "content_2"
    t.text     "content_en_2"
    t.string   "title_3"
    t.string   "title_en_3"
    t.text     "content_3"
    t.text     "content_en_3"
  end

  create_table "admin_subproduct_images", force: true do |t|
    t.integer  "subproduct_id"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_subproducts", force: true do |t|
    t.string   "category"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_subscribes", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
