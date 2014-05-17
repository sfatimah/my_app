json.array!(@foodstalls) do |foodstall|
  json.extract! foodstall, :id, :food, :price
  json.url foodstall_url(foodstall, format: :json)
end
