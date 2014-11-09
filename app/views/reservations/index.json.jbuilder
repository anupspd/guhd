json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :res_type, :purpose, :noOfPpl, :from_date, :to_date
  json.url reservation_url(reservation, format: :json)
end
