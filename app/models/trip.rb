class Trip < ApplicationRecord
  enum status: { "looking" => 0, "filled" => 1 }

  # Direct associations

  belongs_to :pickup_location,
             class_name: "Location"

  belongs_to :dropoff_location,
             class_name: "Location"

  belongs_to :rider

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    rider.to_s
  end
end
