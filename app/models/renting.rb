class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle

  validates :user_id, presence: true
  validates :vehicle_id, presence: true
  validates :user_id, uniqueness: { scope: :vehicle_id }
  validates :total_price, presence: true
end