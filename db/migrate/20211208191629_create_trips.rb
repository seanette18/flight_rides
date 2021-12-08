class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :rider_id
      t.integer :dropoff_location_id
      t.integer :pickup_location_id
      t.datetime :desired_departure_time
      t.integer :status
      t.string :trip_details

      t.timestamps
    end
  end
end
