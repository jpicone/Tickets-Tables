Feature: Create a reservation
 
  As a customer
  So that I can create a reservation
  I want to be able to create my reservation for a restaurant of my choice

Background: Given I am on the ViewRestaurant2 home page
 
Scenario: Should be able to create a new reservation
	Given I am on the CreateReservation2 home page
	Then I should see "Create Reservation"	

Scenario: Successfully Add a reservation
	Given I am on the CreateReservation2 home page
	And I fill in "reservation_party_size" with "4"
	And I fill in "reservation_notes" with "testing"
	And I fill in "reservation_reservation_date_time" with "14:05:07"
	When I press "Create Reservation"
	Then I should be on the ViewReservation2 home page
	Then I should see "Reservation Successfully Created!"

Scenario: Return to form with invalid party_size
	Given I am on the CreateReservation home page
	And I fill in "reservation_party_size" with ""
	And I fill in "reservation_notes" with "test"
	And I fill in "reservation_reservation_date_time" with "14:05:06"
	When I press "Create Reservation"
	Then I should be on the CreateReservation home page
	Then I should see "Invalid Input!"

Scenario: Return to form with invalid reservation_date_time
	Given I am on the CreateReservation home page
	And I fill in "reservation_party_size" with "9"
	And I fill in "reservation_notes" with "test"
	And I fill in "reservation_reservation_date_time" with "(Time)"
	When I press "Create Reservation"
	Then I should be on the CreateReservation home page
	Then I should see "Invalid Input!"

Scenario: Return to form with blank reservation_date_time
	Given I am on the CreateReservation home page
	And I fill in "reservation_party_size" with "9"
	And I fill in "reservation_notes" with "test"
	And I fill in "reservation_reservation_date_time" with ""
	When I press "Create Reservation"
	Then I should be on the CreateReservation home page
	Then I should see "Invalid Input!"

Scenario: Cancel creating a new reservation
	Given I am on the CreateReservation home page
	When I follow "Cancel"
	Then I should be on the ViewRestaurant home page
