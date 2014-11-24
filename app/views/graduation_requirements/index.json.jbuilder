json.array!(@graduation_requirements) do |graduation_requirement|
  json.extract! graduation_requirement, :id, :year, :description
  json.url graduation_requirement_url(graduation_requirement, format: :json)
end
