json.array!(@requirement_categories) do |requirement_category|
  json.extract! requirement_category, :id, :name, :graduation_requirement_id
  json.url requirement_category_url(requirement_category, format: :json)
end
