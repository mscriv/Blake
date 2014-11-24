json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :requirement_category
  json.url subject_url(subject, format: :json)
end
