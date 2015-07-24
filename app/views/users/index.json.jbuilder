json.array!(@users) do |user|
  json.extract! user, :id, :name, :income, :dob, :about, :img_url
  json.url user_url(user, format: :json)
end
