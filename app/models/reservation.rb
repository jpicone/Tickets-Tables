class Reservation < ActiveRecord::Base
	validates :reservation_date_time, presence: true
	validates :party_size, presence: true
	#validates :user_ID, presence: true
	validates :restaurant_ID, presence: true
end
