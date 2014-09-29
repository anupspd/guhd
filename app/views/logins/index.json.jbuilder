json.array!(@logins) do |login|
  json.extract! login, :id, :Username, :Password
  json.url login_url(login, format: :json)
end
