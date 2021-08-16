class Vehicle < ApplicationRecord
  has_many :rentings
  belongs_to :owner, class_name: "User"

  validates :owner_id, uniqueness: true
  validates :vehicle_type { in }
end
