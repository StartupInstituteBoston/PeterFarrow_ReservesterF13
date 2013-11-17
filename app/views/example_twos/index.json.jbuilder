json.array!(@example_twos) do |example_two|
  json.extract! example_two, :name, :description
  json.url example_two_url(example_two, format: :json)
end
