class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rentings
  has_many :vehicles, foreign_key: :owner_id
  has_many :owner_rentings, through: :vehicles, source: :rentings

  has_one_attached :avatar

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :phone_number, presence: true
  validates :description, presence: true
end
