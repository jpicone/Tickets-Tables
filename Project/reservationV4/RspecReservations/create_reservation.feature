Feature: Create a reservation
 
  As a customer
  So that I can create a reservation
  I want to be able to create my reservation for a restaurant of my choice

Background: And I am on the ViewRestaurant page
 
Scenario: Should be able to create a new reservation
	When I press "Create" 
	Then I should be on the CreateReservation page
	And I should see "Create Reservation"	

Scenario: Successfully Add a reservation
	Given I am on the CreateReservation page
	And I fill in "party_size" with "3"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "1999-01-08 04:05:06"
	When I press Submit
	Then I should be on the MyReservations page
	Then I should see "Reservation was successfully added."

Scenario: Return to form with invalid party_size
	Given I am on the CreateReservation page
	And I fill in "party_size" with "a"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "1999-01-08 04:05:06"
	When I press Submit
	Then I should be on the CreateReservation page
	Then I should see "party_size was invalid."

Scenario: Return to form with invalid reservation_date_time
	Given I am on the CreateReservation page
	And I fill in "party_size" with "a"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "foo"
	When I press Submit
	Then I should be on the CreateReservation page
	Then I should see "reservation_date_time was invalid."

Scenario: Cancel creating a new reservation
	Given I am on the CreateReservation page
	When I press Back
	Then I should be on the ViewRestaurant page