Feature: Delete (effectively cancel) a reservation
 
  As a customer
  So that I can cancel a reservation
  I want to be able to delete my reservation of choice from a list of my reservations

Background: I should be on the ViewRestaurant home page

Scenario: Should be able to delete a reservation
	Given I am on the ConfirmDeleteReservation home page
	When I follow "Confirm Delete"
	Then I should see "Reservation successfully deleted!"	

