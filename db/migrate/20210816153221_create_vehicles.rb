class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.integer :total_seats
      t.text :summary
      t.string :address
      t.float :price_per_day
      t.references :owner, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
