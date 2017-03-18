json.extract! user, :id, :email, :year_of_birth, :nationality, :created_at, :updated_at
json.url user_url(user, format: :json)
