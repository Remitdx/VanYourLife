class Van < ApplicationRecord
belongs_to :users
has_many :bookings
has_many :users, through: :bookings
validates :nb_places, presence: true
validates :marque, presence: true
validates :description, presence: true
validates :localisation, presence: true
validates :immatriculation, uniqueness: true, presence: true
end
