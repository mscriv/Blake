json.array!(@locations) do |location|
  json.extract! location, :id, :school, :test_code, :high_school_code, :test_date_id
  json.url location_url(location, format: :json)
end
