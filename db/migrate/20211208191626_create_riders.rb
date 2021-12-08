class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :best_method_of_contact
      t.string :name
      t.string :username

      t.timestamps
    end
  end
end
