# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#This is a very incomplete list- features to be added: Logins, accessibility, tasks to be completed later, view of completed tasks, and sorting and filtering of all tasks
restaurants = [{:restaurant_name => "Outback", :store_ID => "00001", :phone_number => "000-000-0000", :address => "1"}, {:restaurant_name => "Chipotle", :store_ID => "00001", :phone_number => "000-000-0000", :address => "1"}, {:restaurant_name => "McDonalds", :store_ID => "00001", :phone_number => "000-000-0000", :address => "1"}
]

10.times do
	restaurants.each do |task|
	  Restaurant.create!(task)
	end
end
