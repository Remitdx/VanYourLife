class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :vans
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status
end
