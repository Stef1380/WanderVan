class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  validates :statut, presence: true
  validates :statut, inclusion: { in: ["pending", "confirmed", "refused"] }
  validates :total_price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
