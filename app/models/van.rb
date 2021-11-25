class Van < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :nb_seats, presence: true, inclusion: { in: 1..9 }
  validates :brand, presence: true
  validates :description, presence: true
  validates :localisation, presence: true

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
=======
belongs_to :user
has_many :bookings, dependent: :destroy
has_many :users, through: :bookings
validates :nb_seats, presence: true, inclusion: { in: 1..9 }
validates :brand, presence: true
validates :description, presence: true
validates :localisation, presence: true
validates :van_url, presence: true
>>>>>>> master
end
