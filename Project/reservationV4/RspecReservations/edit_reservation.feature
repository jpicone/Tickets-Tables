Feature: Edit a reservation
 
  As a customer
  So that I can edit a reservation
  I want to be able to edit the details of a reservation of my choice from a list of my reservations

Background: And I am on the ViewReservation page

Scenario: Should be able to edit a reservation
	When I press Edit 
	Then I should be on the EditReservation page
	And I should see "Edit Reservation"

Scenario: Successfully Edit details of the reservation
	Given I am on the EditReservation page
	And I fill in "party_size" with "3"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "1999-01-08 04:05:06"
	When I press Submit
	Then I should be on the ViewReservation page
	Then I should see "Reservation was successfully updated."

Scenario: Return to form with invalid party_size
	Given I am on the EditReservation page
	And I fill in "party_size" with "a"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "1999-01-08 04:05:06"
	When I press Submit
	Then I should be on the EditReservation page
	Then I should see "party_size was invalid."

Scenario: Return to form with invalid reservation_date_time
	Given I am on the EditReservation page
	And I fill in "party_size" with "3"
	And I fill in "notes" with "test"
	And I fill in "reservation_date_time" with "foo"
	When I press Submit
	Then I should be on the EditReservation page
	Then I should see "reservation_date_time was invalid."

Scenario: Cancel editing a reservation
	Given I am on the EditReservation page
	When I press Back
	Then I should be on the ViewReservation page



