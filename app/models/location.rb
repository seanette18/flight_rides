class Location < ApplicationRecord
  # Direct associations

  has_many   :pickups,
             :class_name => "Trip",
             :foreign_key => "pickup_location_id",
             :dependent => :nullify

  has_many   :trips,
             :foreign_key => "dropoff_location_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name_of_location
  end

end
