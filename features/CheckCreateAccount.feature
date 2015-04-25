Feature: User can reach signup page

Scenario: Accessing signup page
  Given I am on the Tickets&Tables home page
  When I follow "signup"
  Then I should be on the Signup home page
	
Scenario: Succesfully create user account
	Given I am on the Signup home page
	When I fill in "user_first_name" with "Anonymous"
	And I fill in "user_last_name" with "Anonymous"
	And I fill in "user_email" with "anonymous@anonymous.com"
	And I fill in "user_password" with "password"
	And I fill in "user_password_confirmation" with "password"
	And I press "Sign Up"
	Then I should see "Thank you for signing up!"

Scenario: Unsuccesfully create user account with invalid first_name
	Given I am on the Signup home page
	When I fill in "user_first_name" with ""
	And I fill in "user_last_name" with "Anonymous"
	And I fill in "user_email" with "nonymous@anonymous.com"
	And I fill in "user_password" with "password"
	And I fill in "user_password_confirmation" with "password"
	And I press "Sign Up"
	Then I should see "Form is invalid"


Scenario: Unsuccesfully create user account with invalid last_name
	Given I am on the Signup home page
	When I fill in "user_first_name" with "Anonymous"
	And I fill in "user_last_name" with ""
	And I fill in "user_email" with "nonymous@anonymous.com"
	And I fill in "user_password" with "password"
	And I fill in "user_password_confirmation" with "password"
	And I press "Sign Up"
	Then I should see "Form is invalid"

Scenario: Unsuccesfully create user account with invalid email
	Given I am on the Signup home page
	When I fill in "user_first_name" with "Anonymous"
	And I fill in "user_last_name" with "Anonymous"
	And I fill in "user_email" with "anonymous.anonymous.com"
	And I fill in "user_password" with "password"
	And I fill in "user_password_confirmation" with "password"
	And I press "Sign Up"
	Then I should see "No data available in table"

Scenario: Unsuccesfully create user account with blank email
	Given I am on the Signup home page
	When I fill in "user_first_name" with "Anonymous"
	And I fill in "user_last_name" with "Anonymous"
	And I fill in "user_email" with ""
	And I fill in "user_password" with "password"
	And I fill in "user_password_confirmation" with "password"
	And I press "Sign Up"
	Then I should see "Form is invalid"

Scenario: Unsuccesfully create user account with blank password
	Given I am on the Signup home page
	When I fill in "user_first_name" with "Anonymous"
	And I fill in "user_last_name" with "Anonymous"
	And I fill in "user_email" with "nonymous@anonymous.com"
	And I fill in "user_password" with ""
	And I fill in "user_password_confirmation" with "password"
	And I press "Sign Up"
	Then I should see "Form is invalid"

Scenario: Unsuccesfully create user account with blank password confirmation
	Given I am on the Signup home page
	When I fill in "user_first_name" with "Anonymous"
	And I fill in "user_last_name" with "Anonymous"
	And I fill in "user_email" with "nonymous@anonymous.com"
	And I fill in "user_password" with "password"
	And I fill in "user_password_confirmation" with ""
	And I press "Sign Up"
	Then I should see "Form is invalid"

Scenario: Unsuccesfully create user account with blank password & confirmation
	Given I am on the Signup home page
	When I fill in "user_first_name" with "Anonymous"
	And I fill in "user_last_name" with "Anonymous"
	And I fill in "user_email" with "nonymous@anonymous.com"
	And I fill in "user_password" with ""
	And I fill in "user_password_confirmation" with ""
	And I press "Sign Up"
	Then I should see "Form is invalid"





