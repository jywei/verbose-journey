json.array!(@admin_staffs) do |admin_staff|
  json.extract! admin_staff, :id, :name, :office, :slogan, :content, :about_id
  json.url admin_staff_url(admin_staff, format: :json)
end
