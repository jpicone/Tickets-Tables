Feature: User can reach login page

Scenario: Accessing login page
  Given I am on the Tickets&Tables home page
  When I press login
  Then I should see the Log In page
