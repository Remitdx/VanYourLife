class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :vans

  # validates :address, presence: true
  validates :email, presence: true
  validates :password, presence: true
# validates :first_name, presence: true
 # validates :last_name, presence: true
 # validates :driving_license, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
