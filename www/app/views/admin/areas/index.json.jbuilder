json.array!(@admin_areas) do |admin_area|
  json.extract! admin_area, :id, :city
  json.url admin_area_url(admin_area, format: :json)
end
