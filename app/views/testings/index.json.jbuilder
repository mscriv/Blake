json.array!(@testings) do |testing|
  json.extract! testing, :id, :name, :description
  json.url testing_url(testing, format: :json)
end
