Feature: Create a restaurant
 
  As a customer
  So that I can create a restaurant
  I want to be able to create my restaurant for customers to make reservations

Background: And I am on the restaurants page
 
Scenario: Should be able to create a new restaurant
	Given I am on the restaurants page	
	When I press the "New Restaurant" button 
	Then I should be on the new_restaurant page
	And I should see "Create Restaurant"	

Scenario: Successfully Add a new Restaurant
	Given I am on the new_restaurant page
	When I fill in "restaurant_name" with "Outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "111-222-3333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the show_restaurant page
	And I should see "Restaurant was successfully added."

Scenario: Return to form with invalid max occupancy
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with "Outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "111-222-3333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "a"
	When I press the Submit button
	Then I should be on the new_restaurant page
	Then I should see "max occupancy invalid."

Scenario: Return to form with invalid phone number
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with "Outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the new_restaurant page
	Then I should see "Phone Number invalid."

Scenario: Return to form with missing restaurant name
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with ""
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the new_restaurant page
	Then I should see "name missing."

Scenario: Return to form with missing store id
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with ""
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the new_restaurant page
	Then I should see "Store ID missing."

Scenario: Return to form with missing phone number
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with ""
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the new_restaurant page
	Then I should see "Phone Number missing."

Scenario: Return to form with missing address
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with ""
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the new_restaurant page
	Then I should see "Address missing."

Scenario: Return to form with missing max occupancy
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the new_restaurant page
	Then I should see "Max Occupancy missing."


Scenario: Cancel creating a new restaraunt
	Given I am on the new_restaurant page
	When I press the Back button
	Then I should be on the Restaurants page
