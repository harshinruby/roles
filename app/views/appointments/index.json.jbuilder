json.array!(@appointments) do |appointment|
  json.extract! appointment, :name, :description
  json.url appointment_url(appointment, format: :json)
end
