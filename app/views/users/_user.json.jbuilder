json.extract! user, :id, :cod, :name, :gender, :birthday, :created_at, :updated_at
json.url user_url(user, format: :json)
