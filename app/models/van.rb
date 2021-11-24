class Van < ApplicationRecord
belongs_to :user
has_many :bookings
has_many :users, through: :bookings
validates :nb_seats, presence: true, inclusion: { in: 1..9 }
validates :brand, presence: true
validates :description, presence: true
validates :localisation, presence: true
end
