Feature: Delete a restaurant
 
  As a administrator
  So that I can delete a restaurant
  I want to be able to delete a restaurant of my choice

Background: I am on the ViewRestaurant home page

Scenario: Should be able to delete a restaurant
	Given I am on the ConfirmDelete home page
	Then I should see "Are you sure you want to delete this restaurant?"
	
Scenario: Should be able to confirm delete
	Given I am on the ConfirmDelete home page
	When I follow "delete"
	Then I should see "Restaurant successfully deleted!"

