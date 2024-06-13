class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :van
  # validates :statut, presence: true
  # validates :statut, inclusion: { in: ["pending", "confirmed", "refused"] }
  validates :total_price, presence: true
  validate :start_date_before_end_date
  validate :no_overlap

  private


  # def dates_must_be_available
  #   overlapping_bookings = Booking.where(van_id: van_id)
  #                                 .where.not(id: id)
  #                                 .where('start_date < ? AND end_date > ?', end_date, start_date)

  #   if overlapping_bookings.exists?
  #     errors.add(:base, "Les dates sélectionnées se chevauchent avec une réservation existante.")
  #   end
  # end

  def no_overlap
    if Booking.where(van_id: van_id)
              .where.not(id: id)
              .where("start_date < ? AND end_date > ?", end_date, start_date)
              .exists?
      errors.add(:base, "Les dates se chevauchent avec une réservation existante.")
    end
  end

  def start_date_before_end_date
    errors.add(:start_date, "ne peut pas être après ou en même temps que la date de fin") if start_date >= end_date
  end
end
