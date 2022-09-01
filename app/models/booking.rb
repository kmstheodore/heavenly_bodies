class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :planet_id, uniqueness: { scope: :start_date, message: 'This planet is already booked at this date !' }
end
