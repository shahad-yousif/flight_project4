json.extract! airportloc, :id, :address, :latitude, :longitude, :created_at, :updated_at
json.url airportloc_url(airportloc, format: :json)