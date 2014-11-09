json.array!(@hall_res) do |hall_re|
  json.extract! hall_re, :id, :reservation_id, :hall
  json.url hall_re_url(hall_re, format: :json)
end
