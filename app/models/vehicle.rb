class Vehicle < ApplicationRecord
  has_many :rentings
  belongs_to :owner, class_name: "User"
end
