json.array!(@admin_og_main_pages) do |admin_og_main_page|
  json.extract! admin_og_main_page, :id, :home_title, :home_description, :home_image, :about_title, :about_description, :about_image, :contact_title, :contact_description, :contact_image, :store_title, :store_description, :store_image, :news_title, :news_description, :news_image, :brand_title, :brand_description, :brand_image
  json.url admin_og_main_page_url(admin_og_main_page, format: :json)
end
