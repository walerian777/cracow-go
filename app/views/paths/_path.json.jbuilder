json.extract! path, :id, :user_id, :tag_id, :created_at, :updated_at
json.nodes path.locations do |node|
  json.extract! node, :id, :name, :latitude, :longitude
end
json.url path_url(path, format: :json)
