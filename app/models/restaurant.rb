#This is the restaurant model source code.
class Restaurant < ActiveRecord::Base
	validates :restaurant_name, presence: true
	validates :store_ID, presence: true
	validates :phone_number, presence: true
	validates :address, presence: true
	validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Use format 555-555-5555" }
end
