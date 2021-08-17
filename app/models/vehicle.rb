class Vehicle < ApplicationRecord
  has_many :rentings
  belongs_to :owner, class_name: "User"

  has_one_attached :photo

  VEHICLE_ARRAY = ["Avion", "Vaisseau spatial", "UFO", "Montgolfiere"]
  # validates :owner_id, uniqueness: true
  validates :vehicle_type, inclusion: { in: VEHICLE_ARRAY }
  validates :name, presence: true


end
