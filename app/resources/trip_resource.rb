class TripResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :rider_id, :integer
  attribute :dropoff_location_id, :integer
  attribute :pickup_location_id, :integer
  attribute :desired_departure_time, :datetime
  attribute :status, :string_enum, allow: Trip.statuses.keys
  attribute :trip_details, :string

  # Direct associations

  belongs_to :dropoff_location,
             resource: LocationResource

  belongs_to :rider

  # Indirect associations

end
