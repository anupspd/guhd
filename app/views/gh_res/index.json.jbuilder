json.array!(@gh_res) do |gh_re|
  json.extract! gh_re, :id, :reservation_id, :guestType, :guestName, :guestSex, :guestAge, :guestEMail, :guestPhone
  json.url gh_re_url(gh_re, format: :json)
end
