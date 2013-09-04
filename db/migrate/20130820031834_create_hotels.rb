class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :dateArrive
      t.string :dateDepart
      t.string :name
      t.string :address
      t.float :cost
      t.string :provider
      t.integer :tripID

      t.timestamps
    end
  end
end
