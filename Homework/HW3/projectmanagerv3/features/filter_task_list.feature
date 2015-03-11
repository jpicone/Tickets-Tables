Feature: display list of tasks filtered by user
 
  As a developer
  So that I can quickly browse tasks assigned to a user
  I want to see tasks assigned to certain users

Background: tasks have been added to database

  Given the following tasks exist:
  | title                   | user    | due_date     |
  | Add User Profile        | Coulson | 25-Nov-1992  |
  | Create Login Modal      | Skye    | 26-Oct-1984  |
  | Fix header Display      | May     | 21-Jul-1989  |
  | Add Mobile support      | Fitz    | 10-Aug-2011  |
  | Get fastload working    | Fitz    | 5-Jan-2001   |
  | Add Site overview       | Coulson | 25-Apr-2001  |
  | Improve navigation      | Fitz    | 6-Apr-1968   |
  | Raid cookie jar         | Ward    | 5-Nov-2004   |
  | Improve security        | Simmons | 12-Jun-1981  |
  | Steal milk              | May     | 21-Jun-2000  |

  And  I am on the ProjectManager home page

Scenario: restrict to tasks owned by 'Coulson' or 'Skye'
	# enter step(s) to check the 'Coulson' and 'Skye' checkboxes
	When I select the following users: Coulson, Skye

	# enter step(s) to uncheck all other checkboxes
	When I unselect the following users: May, Fitz, Ward, Simmons

	# enter step to "submit" the search form on the homepage
	# Step defined in web_steps.rb
	And I press "Refresh"

  # enter step(s) to ensure that Coulson's and Skye's tasks are visible
	# Steps defined in web_steps.rb
	Then I should see "Add User Profile"
	And I should see "Create Login Modal"
	And I should see "Add Site overview"

  # enter step(s) to ensure that other tasks are not visible
	# Steps defined in web_steps.rb
	And I should not see "Fix header Display"
	And I should not see "Add Mobile support"
	And I should not see "Get fastload working"
	And I should not see "Improve navigation"
	And I should not see "Raid cookie jar"
	And I should not see "Improve security"
	And I should not see "Steal milk"

Scenario: all users selected
  When I select the following users: May, Fitz, Ward, Simmons, Coulson, Skye

	# Step defined in web_steps.rb
	And I press "Refresh"

	Then I should see all the tasks