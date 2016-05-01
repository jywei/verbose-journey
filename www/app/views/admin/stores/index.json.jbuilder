json.array!(@admin_stores) do |admin_store|
  json.extract! admin_store, :id, :name, :phone, :email, :address, :sort, :is_public
  json.url admin_store_url(admin_store, format: :json)
end
