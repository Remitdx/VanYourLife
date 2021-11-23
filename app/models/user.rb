class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :vans

  validates :address, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, uniqueness: true, presence: true
  validates :first_name, uniqueness: true, presence: true
  validates :last_name, uniqueness: true, presence: true
  validates :driving_license, uniqueness: true, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
