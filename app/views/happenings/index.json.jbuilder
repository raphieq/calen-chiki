json.array!(@happenings) do |happening|
  json.extract! happening, :id, :date_created, :user_id, :title, :description, :img_url, :tag
  json.url happening_url(happening, format: :json)
end
