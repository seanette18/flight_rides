class Trip < ApplicationRecord
  enum status: {"looking"=>0, "filled"=>1} 

  # Direct associations

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    rider.to_s
  end

end
