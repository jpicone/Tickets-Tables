Feature: User can reach login page

Scenario: Accessing login page
  Given I am on the Tickets&Tables home page
	When I follow "login"
  Then I should be on the Login home page

Scenario: Successfully Log in
	Given I am on the Login home page
	When I fill in "email" with "anonymous@anonymous.com"
	And I fill in "password" with "password"
	And I press "Log In"
	Then I should see "My Reservations"
