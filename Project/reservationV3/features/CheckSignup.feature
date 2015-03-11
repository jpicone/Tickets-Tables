Feature: User can reach signup page

Scenario: Accessing signup page
  Given I am on the welcome home page
  When I follow "Signup"
  Then I should be on the signup page
