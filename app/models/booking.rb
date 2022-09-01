class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :end_date, comparison: { greater_than_or_equal_to: :start_date, message: 'Your end date must after your start date !' }
  validates :planet_id, uniqueness: { scope: :start_date, message: 'This planet is already booked at this date !' }
end
