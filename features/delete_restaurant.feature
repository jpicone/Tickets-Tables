Feature: Delete a restaurant
 
  As a administrator
  So that I can delete a restaurant
  I want to be able to delete a restaurant of my choice

Background: And I am on the restaurants page

Scenario: Should be able to delete a restaurant
	When I press Delete 
	Then I should be on the restaurants page
	And I should see "Restaurants was successfully deleted."	

