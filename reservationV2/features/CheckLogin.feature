Feature: User can reach login page

Scenario: Accessing login page
  Given I am on the Home Page
  When I click Login
  Then I should see the login page
