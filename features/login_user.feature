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

Scenario: Successfully Log out
	Given I am on the Login home page
	When I fill in "email" with "anonymous@anonymous.com"
	And I fill in "password" with "password"
	And I press "Log In"
	Then I should see "My Reservations"
	When I follow "logout"
	Then I should see "Welcome to Tickets & Tables!"

Scenario: Unsuccessfully Log in with invalid email
	Given I am on the Login home page
	When I fill in "email" with ""
	And I fill in "password" with "password"
	And I press "Log In"
	Then I should see "Email or password is invalid"

Scenario: Unsuccessfully Log in with wrong password
	Given I am on the Login home page
	When I fill in "email" with "anonymous@anonymous.com"
	And I fill in "password" with "wrong"
	And I press "Log In"
	Then I should see "Email or password is invalid"

Scenario: Unsuccessfully Log in with blank password
	Given I am on the Login home page
	When I fill in "email" with "anonymous@anonymous.com"
	And I fill in "password" with ""
	And I press "Log In"
	Then I should see "Email or password is invalid"
