Feature: Create a restaurant
 
  As a customer
  So that I can create a restaurant
  I want to be able to create my restaurant for customers to make reservations

Background: And I am on the restaurants page

Scenario: Should be able to create a new restaurant
	Given I am on the Restaurants home page	
	When I follow "add" 
	Then I should see "Create New Restaurant"	

Scenario: Successfully Add a new Restaurant
	Given I am on the CreateRestaurant home page
	When I fill in "restaurant_restaurant_name" with "Outback"
	And I fill in "restaurant_store_ID" with "999"
	And I fill in "restaurant_phone_number" with "111-222-3333"
  And I fill in "restaurant_address" with "1234 Road"
	When I press "submit"
	Then I should see "Add New Restaurant"

Scenario: Cancel creating a new restaraunt
	Given I am on the CreateRestaurant home page
	When I follow "back"
	Then I should be on the Restaurants home page

Scenario: Unsuccessful attempt to add a new Restaurant without name
	Given I am on the CreateRestaurant home page
	When I fill in "restaurant_store_ID" with "999"
	And I fill in "restaurant_phone_number" with "111-222-3333"
  And I fill in "restaurant_address" with "1234 Road"
	When I press "submit"
	Then I should see "Invalid Input"

Scenario: Unsuccessful attempt to add a new Restaurant without store ID
	Given I am on the CreateRestaurant home page
	When I fill in "restaurant_restaurant_name" with "Outback"
	And I fill in "restaurant_phone_number" with "111-222-3333"
  And I fill in "restaurant_address" with "1234 Road"
	When I press "submit"
	Then I should see "Invalid Input"

Scenario: Unsuccessful attempt to add a new Restaurant without phone number
	Given I am on the CreateRestaurant home page
	When I fill in "restaurant_restaurant_name" with "Outback"
	And I fill in "restaurant_store_ID" with "999"
  And I fill in "restaurant_address" with "1234 Road"
	When I press "submit"
	Then I should see "Invalid Input"

Scenario: Unsuccessful attempt to add a new Restaurant with incorrect phone num format
	Given I am on the CreateRestaurant home page
	When I fill in "restaurant_restaurant_name" with "Outback"
	And I fill in "restaurant_store_ID" with "999"
	And I fill in "restaurant_phone_number" with "1112223333"
  And I fill in "restaurant_address" with "1234 Road"
	When I press "submit"
	Then I should see "Invalid Input"

Scenario: Unsuccessful attempt to add a new Restaurant without address
	Given I am on the CreateRestaurant home page
	When I fill in "restaurant_restaurant_name" with "Outback"
	And I fill in "restaurant_store_ID" with "999"
	And I fill in "restaurant_phone_number" with "111-222-3333"
	When I press "submit"
	Then I should see "Invalid Input"
