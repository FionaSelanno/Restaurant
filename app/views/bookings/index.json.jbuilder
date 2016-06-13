json.array!(@bookings) do |booking|
  json.extract! booking, :id, :booked?
  json.url booking_url(booking, format: :json)
end
