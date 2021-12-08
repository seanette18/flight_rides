class LocationResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name_of_location, :string
  attribute :address, :string

  # Direct associations

  # Indirect associations

end
