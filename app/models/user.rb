class User < ApplicationRecord
  has_many :planets
  has_many :bookings
  # has_many :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
