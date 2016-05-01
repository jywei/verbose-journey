json.array!(@admin_stories) do |admin_story|
  json.extract! admin_story, :id, :title, :title2, :content, :button_text, :link_url
  json.url admin_story_url(admin_story, format: :json)
end
