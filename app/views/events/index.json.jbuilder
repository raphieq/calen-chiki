json.array!(@events) do |event|
  json.extract! event, :id, :title, :date, :about
  json.url event_url(event, format: :json)
end
