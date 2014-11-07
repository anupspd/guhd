json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :username, :department, :type, :subject, :phone
  json.url complaint_url(complaint, format: :json)
end
