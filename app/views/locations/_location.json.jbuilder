json.extract! location, :id, :name, :description, :created_at, :updated_at,
                        :latitude, :longitude
json.tags location.tags do |tag|
  json.id tag.id
  json.name tag.name
  json.url tag_url(tag, format: :json)
end
json.url location_url(location, format: :json)
