Feature: User can reach signup page

Scenario: Accessing signup page
  Given I am on the Tickets&Tables home page
  When I follow signUp
  Then I should see the Sign Up page
