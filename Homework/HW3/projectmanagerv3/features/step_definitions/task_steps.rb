# Add a declarative step here for populating the DB with tasks.

Given /the following tasks exist/ do |task_table|
  task_table.hashes.each do |task|
		Project.create!(task)
  end
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
	regexp = /#{e1}.*#{e2}/m
	page.body.should =~ regexp
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I unselect the following users: Skye, Coulson, Ward"
#  "When I select the following users: Coulson"

When /I (un)?select the following users: (.*)/ do |uncheck, user_list|
	user_list.split(', ').each do |user|
		user = "users_#{user}"
		if uncheck
			uncheck(user)
		else
			check(user)
		end
	end
end

# Make sure that all the tasks in the app are visible in the table

Then /I should see all the tasks/ do
	tasks = Project.all
	rows = page.all('#projects tr').size
	rows -= 1
	if rows == tasks.size
		tasks.each do |task|
			page.body.should =~ /#{task.title}/m
		end
	else
		fail
	end
end