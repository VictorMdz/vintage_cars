class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.integer :year
      t.string :license_plate
      t.integer :seats
      t.string :color
      t.string :transmission
      t.string :energy_source
      t.integer :price_per_hour
      t.string :photo

      t.timestamps
    end
  end
end
