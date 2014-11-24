json.array!(@testing_comparisons) do |testing_comparison|
  json.extract! testing_comparison, :id, :name, :cost, :general_information, :test_content, :scoring
  json.url testing_comparison_url(testing_comparison, format: :json)
end
