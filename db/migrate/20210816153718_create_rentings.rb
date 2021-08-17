class CreateRentings < ActiveRecord::Migration[6.0]
  def change
    create_table :rentings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.float :total_price
      t.string :status

      t.timestamps
    end
  end
end
