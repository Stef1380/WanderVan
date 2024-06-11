class User < ApplicationRecord
  has_many :vans
  has_many :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
