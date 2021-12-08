class AddPickupLocationReferenceToTrips < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :trips, :locations, column: :pickup_location_id
    add_index :trips, :pickup_location_id
    change_column_null :trips, :pickup_location_id, false
  end
end
