class RiderResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :best_method_of_contact, :string
  attribute :name, :string
  attribute :username, :string

  # Direct associations

  has_many :trips

  # Indirect associations
end
