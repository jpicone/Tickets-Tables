Feature: Create a reservation
 
  As a customer
  So that I can create a reservation
  I want to be able to create my reservation for a restaurant of my choice

Background: And I am on the ViewRestaurant2 home page
 
Scenario: Should be able to create a new reservation
	When I press "Add Reservation" 
	Then I should be on the CreateReservation home page
	And I should see "Create Reservation"	

Scenario: Successfully Add a reservation
	Given I am on the CreateReservation home page
	And I fill in "party_size" with "3"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "1999-01-08 04:05:06"
	When I press "Create Reservation"
	Then I should be on the ViewRestaurant2 home page
	Then I should see "Reservation Successfully Created!"

Scenario: Return to form with invalid party_size
	Given I am on the CreateReservation home page
	And I fill in "party_size" with ""
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "1999-01-08 04:05:06"
	When I press "Create Reservation"
	Then I should be on the CreateReservation home page
	Then I should see "Invalid Input!"

Scenario: Return to form with invalid reservation_date_time
	Given I am on the CreateReservation home page
	And I fill in "party_size" with "9"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with ""
	When I press "Create Reservation"
	Then I should be on the CreateReservation home page
	Then I should see "Invalid Input!"

Scenario: Cancel creating a new reservation
	Given I am on the CreateReservation home page
	When I press "Cancel"
	Then I should be on the ViewRestaurant2 home page
