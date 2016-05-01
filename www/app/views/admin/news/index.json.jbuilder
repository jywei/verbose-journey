json.array!(@admin_news) do |admin_news|
  json.extract! admin_news, :id, :title, :content, :main_visual, :is_public
  json.url admin_news_url(admin_news, format: :json)
end
