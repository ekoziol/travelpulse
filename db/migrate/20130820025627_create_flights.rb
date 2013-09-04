class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :tripId
      t.string :flightTo
      t.string :flightFrom
      t.string :datetimeDepart
      t.string :datetimeArrive
      t.float :cost
      t.string :provider
      t.string :class

      t.timestamps
    end
  end
end
