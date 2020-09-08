class AddLocationToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :location, :string
  end
end
