class AddRiderReferenceToTrips < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :trips, :riders
    add_index :trips, :rider_id
    change_column_null :trips, :rider_id, false
  end
end
