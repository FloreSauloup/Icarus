class AddDefaultvalueToValueForRenting < ActiveRecord::Migration[6.0]
  def change
    change_column_default :rentings, :status, "pending"
  end
end
