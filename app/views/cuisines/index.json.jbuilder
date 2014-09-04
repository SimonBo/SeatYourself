json.array!(@cuisines) do |cuisine|
  json.extract! cuisine, :id, :restaurant_id, :name
  json.url cuisine_url(cuisine, format: :json)
end
