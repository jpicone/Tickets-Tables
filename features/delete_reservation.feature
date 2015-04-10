Feature: Delete (effectively cancel) a reservation
 
  As a customer
  So that I can cancel a reservation
  I want to be able to delete my reservation of choice from a list of my reservations

Background: Given I am on the ViewRestaurant home page

Scenario: Should be able to delete a reservation
	When I press "Delete" 
	Then I should be on the ConfirmDelete home page
	When I press "Confirm Delete"
	Then I should see "Reservation successfully deleted!"	

