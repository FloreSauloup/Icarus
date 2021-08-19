class Vehicle < ApplicationRecord
  has_many :rentings
  belongs_to :owner, class_name: "User"

  has_one_attached :photo

  VEHICLE_ARRAY = ["Unusual", "Futuristic", "Contemporary", "Antique", "Extreme"]
  # validates :owner_id, uniqueness: true
  validates :vehicle_type, inclusion: { in: VEHICLE_ARRAY }
  validates :name, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
