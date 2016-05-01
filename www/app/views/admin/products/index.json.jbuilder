json.array!(@admin_products) do |admin_product|
  json.extract! admin_product, :id, :name, :content, :main_visual, :price, :stock, :is_public, :brand_id
  json.url admin_product_url(admin_product, format: :json)
end
