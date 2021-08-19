class ChangePricePerDayToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :vehicles, :price_per_day, :integer
  end
end
