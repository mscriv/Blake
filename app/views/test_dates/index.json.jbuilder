json.array!(@test_dates) do |test_date|
  json.extract! test_date, :id, :date, :deadline, :testing_id
  json.url test_date_url(test_date, format: :json)
end
