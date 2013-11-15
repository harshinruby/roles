json.array!(@workhours) do |workhour|
  json.extract! workhour, :working_day, :start_time, :end_time
  json.url workhour_url(workhour, format: :json)
end
