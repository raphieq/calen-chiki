json.array!(@diaries) do |diary|
  json.extract! diary, :id, :user, :title, :date, :body
  json.url diary_url(diary, format: :json)
end
