json.array!(@admin_abouts) do |admin_about|
  json.extract! admin_about, :id, :title_area_1, :content_area_1, :title_area_2, :content_area_2
  json.url admin_about_url(admin_about, format: :json)
end
