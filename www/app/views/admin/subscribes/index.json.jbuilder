json.array!(@admin_subscribes) do |admin_subscribe|
  json.extract! admin_subscribe, :id, :email
  json.url admin_subscribe_url(admin_subscribe, format: :json)
end
