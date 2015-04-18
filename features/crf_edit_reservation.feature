Feature: Edit a reservation
 
As a customer
So that I can edit a reservation
I want to be able to edit the details of a reservation of my choice from a list of my reservations

Background: I should be on the ViewRestaurant Page
	Given I am on the ViewRestaurant home page

Scenario: Should be able to edit a reservation
	Given I am on the ViewRestaurant2 home page
	When I follow "MacNGrill" 
	Then I should be on the ViewReservation home page
	And I should see "Edit"

Scenario: Successfully Edit details of the reservation
	Given I am on the EditReservation home page
	And I fill in "reservation_party_size" with "3"
	And I fill in "reservation_notes" with "test"
	And I fill in "reservation_reservation_date_time" with "1999-01-08 04:05:06"
	When I press "Update Reservation"
	Then I should be on the ViewReservation home page
	Then I should see "Reservation Successfully Updated!"

Scenario: Return to form with invalid party_size
	Given I am on the EditReservation home page
	And I fill in "reservation_party_size" with ""
	And I fill in "reservation_notes" with "test"
	And I fill in "reservation_reservation_date_time" with "1999-01-08 04:05:06"
	When I press "Update Reservation"
	Then I should be on the InvalidEditReservation home page
	Then I should see "Invalid Input!"

Scenario: Return to form with invalid reservation_date_time
	Given I am on the EditReservation home page
	And I fill in "reservation_party_size" with "3"
	And I fill in "reservation_notes" with "test"
	And I fill in "reservation_reservation_date_time" with ""
	When I press "Update Reservation"
	Then I should be on the InvalidEditReservation home page
	Then I should see "Invalid Input!"

Scenario: Cancel editing a reservation
	Given I am on the EditReservation home page
	When I follow "Cancel"
	Then I should be on the ViewReservation home page



