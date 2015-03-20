# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#This is a very incomplete list- features to be added: Logins, accessibility, tasks to be completed later, view of completed tasks, and sorting and filtering of all tasks
restaurants = [{:restaurant_name => "Outback", :store_ID => "00001", :phone_number => "000-000-0009", :address => "900"}, {:restaurant_name => "Chipotle", :store_ID => "00002", :phone_number => "000-000-0008", :address => "800"}, {:restaurant_name => "McDonalds", :store_ID => "00003", :phone_number => "000-000-0007", :address => "700"},{:restaurant_name => "MacNGrill", :store_ID => "00004", :phone_number => "000-000-0006", :address => "600"},{:restaurant_name => "Olive Garden", :store_ID => "00005", :phone_number => "000-000-0005", :address => "500"},{:restaurant_name => "Red Robin", :store_ID => "00006", :phone_number => "000-000-0004", :address => "600"},{:restaurant_name => "Pita Pit", :store_ID => "00007", :phone_number => "000-000-0003", :address => "300"},{:restaurant_name => "The Blue Star", :store_ID => "00008", :phone_number => "000-000-0002", :address => "100"},
]

restaurants.each do |task|
   Restaurant.create!(task)
end

reservations = [{:restaurant_ID => 1, :party_size => 2, :user_ID => 0, :notes => "test"}]

reservations.each do |task|
   Reservation.create!(task)
end
