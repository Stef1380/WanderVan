class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  validates :total_price, presence: true
  validate :start_date_before_end_date
  validate :dates_not_in_past

  private

  def start_date_before_end_date
    errors.add(:start_date, "ne peut pas être après ou en même temps que la date de fin") if start_date >= end_date
  end

  def dates_not_in_past
    errors.add(:start_date, "ne peut pas être dans le passé") if start_date < Date.today
    errors.add(:end_date, "ne peut pas être dans le passé") if end_date < Date.today
  end
end
