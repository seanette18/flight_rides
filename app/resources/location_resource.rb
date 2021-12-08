class LocationResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name_of_location, :string
  attribute :address, :string

  # Direct associations

  has_many   :pickups,
             resource: TripResource,
             foreign_key: :pickup_location_id

  has_many   :trips,
             foreign_key: :dropoff_location_id

  # Indirect associations
end
