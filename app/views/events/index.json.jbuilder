json.array!(@events) do |event|
  json.extract! event, :id, :title, :location, :date, :start_time, :ends_at
  json.url event_url(event, format: :json)
end
