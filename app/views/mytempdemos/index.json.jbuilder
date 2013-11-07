json.array!(@mytempdemos) do |mytempdemo|
  json.extract! mytempdemo, :name, :content
  json.url mytempdemo_url(mytempdemo, format: :json)
end
