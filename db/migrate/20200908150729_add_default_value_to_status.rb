class AddDefaultValueToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :status, :integer, default: 0, nil: 0
  end
end
