json.extract! trip, :id, :rider_id, :dropoff_location_id, :pickup_location_id,
              :desired_departure_time, :status, :trip_details, :created_at, :updated_at
json.url trip_url(trip, format: :json)
