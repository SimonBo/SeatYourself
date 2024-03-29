json.array!(@reviews) do |review|
  json.extract! review, :id, :rating, :comment, :user_id, :restaurant_id
  json.url review_url(review, format: :json)
end
