json.array!(@admin_histories) do |admin_history|
  json.extract! admin_history, :id, :content
  json.url admin_history_url(admin_history, format: :json)
end
