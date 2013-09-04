class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :dateStart
      t.string :dateEnd
      t.float :cost
      t.float :minCost
      t.float :maxCost
      t.string :startDestination
      t.string :endDestination

      t.timestamps
    end
  end
end
