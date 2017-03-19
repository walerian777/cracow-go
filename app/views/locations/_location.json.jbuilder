json.extract! location, :id, :name, :description, :created_at, :updated_at,
                        :latitude, :longitude
json.tags location.tags do |tag|
  json.extract! tag, :id, :name
end
json.url location_url(location, format: :json)
