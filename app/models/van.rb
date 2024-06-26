class Van < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :global_search,
    against: [:location, :number_of_seat],
    using: {
      tsearch: { prefix: true }
    }

  has_many_attached :photos
  has_many :bookings
  belongs_to :user

  validates :brand, presence: true
  validates :description, presence: true
  validates :number_of_seat, presence: true
  validates :location, presence: true
  validates :categorie, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 50, less_than_or_equal_to: 300 }
end
