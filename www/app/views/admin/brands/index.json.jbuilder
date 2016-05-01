json.array!(@admin_brands) do |admin_brand|
  json.extract! admin_brand, :id, :name, :content, :main_visual
  json.url admin_brand_url(admin_brand, format: :json)
end
