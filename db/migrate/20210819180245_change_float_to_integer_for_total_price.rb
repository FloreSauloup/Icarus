class ChangeFloatToIntegerForTotalPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :rentings, :total_price, :integer
  end
end
