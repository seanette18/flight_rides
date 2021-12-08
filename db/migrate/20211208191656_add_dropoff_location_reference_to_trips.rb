class AddDropoffLocationReferenceToTrips < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :trips, :locations, column: :dropoff_location_id
    add_index :trips, :dropoff_location_id
    change_column_null :trips, :dropoff_location_id, false
  end
end
