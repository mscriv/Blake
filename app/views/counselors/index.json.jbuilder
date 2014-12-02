json.array!(@counselors) do |counselor|
  json.extract! counselor, :id, :name, :bio, :contact, :school_id
  json.url counselor_url(counselor, format: :json)
end
