json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :username, :department, :compl_type, :subject, :phone
  json.url complaint_url(complaint, format: :json)
end
