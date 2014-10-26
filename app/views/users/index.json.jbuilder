json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone, :address, :designation
  json.url user_url(user, format: :json)
end
