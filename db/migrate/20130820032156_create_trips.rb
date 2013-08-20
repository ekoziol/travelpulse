class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :dateStart
      t.integer :dateEnd
      t.float :cost
      t.float :minCost
      t.float :maxCost
      t.string :startDestination
      t.string :endDestination

      t.timestamps
    end
  end
end
