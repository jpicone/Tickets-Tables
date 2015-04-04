Feature: Edit a Restaurant
 
  As a Administrator
  So that I can edit a restaurant
  I want to be able to edit the details of a restaurant of my choice from a list of restaurants

Background: And I am on the restaraunts page

Scenario: Should be able to edit a restaraunt
	When I press Edit 
	Then I should be on the edit_restaraunt page
	And I should see "Edit Reservation"


Scenario: Successfully edit a Restaurant
	Given I am on the edit_restaurant page
	When I fill in "restaurant_name" with "Outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "111-222-3333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the show_restaurant page
	And I should see "Restaurant was successfully edited."

Scenario: Return to edit form with invalid max occupancy
	Given I am on the edit_restaurant page
	And I fill in "restaurant_name" with "Outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "111-222-3333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "a"
	When I press the Submit button
	Then I should be on the edit_restaurant page
	Then I should see "max occupancy invalid."

Scenario: Return to edit form with invalid phone number
	Given I am on the edit_restaurant page
	And I fill in "restaurant_name" with "Outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the edit_restaurant page
	Then I should see "Phone Number invalid."

Scenario: Return to edit form with missing restaurant name
	Given I am on the edit_restaurant page
	And I fill in "restaurant_name" with ""
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the edit_restaurant page
	Then I should see "name missing."

Scenario: Return to edit form with missing store id
	Given I am on the new_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with ""
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the edit_restaurant page
	Then I should see "Store ID missing."

Scenario: Return to edit form with missing phone number
	Given I am on the edit_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with ""
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the edit_restaurant page
	Then I should see "Phone Number missing."

Scenario: Return to edit form with missing address
	Given I am on the edit_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with ""
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the edit_restaurant page
	Then I should see "Address missing."

Scenario: Return to edit form with missing max occupancy
	Given I am on the edit_restaurant page
	And I fill in "restaurant_name" with "outback"
	And I fill in "store_ID" with "999"
	And I fill in "phone_number" with "1112223333"
        And I fill in "address" with "1234 Road"
	And I fill in "max_occupancy" with "50"
	When I press the Submit button
	Then I should be on the edit_restaurant page
	Then I should see "Max Occupancy missing."


Scenario: Cancel editing a restaraunt
	Given I am on the edit_restaurant page
	When I press the Back button
	Then I should be on the Restaurants page