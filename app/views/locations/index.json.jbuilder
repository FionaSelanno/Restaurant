json.array!(@locations) do |location|
  json.extract! location, :id, :restaurant_name, :description, :seats, :email, :phone
  json.url location_url(location, format: :json)
end
