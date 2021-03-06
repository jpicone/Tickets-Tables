# Add a declarative step here for populating the DB with tasks.

Given(/^the following restaurants exist:$/) do |table|
  table.hashes.each do |task|
		Restaurant.create!(task)
  end
end
Given(/^the following users exist:$/) do |table|
  table.hashes.each do |task|
		User.create!(task)
  end
end
# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
	regexp = /#{e1}.*#{e2}/m
	page.body.should =~ regexp
end

When(/^I press login$/) do
  visit "/welcome/login"
end

When(/^I follow signUp$/) do
  visit "/welcome/signup"
end

Then(/^I should see the Log In page$/) do
  text = "Log in"
  page.should have_content(text)
end

Then(/^I should see the Sign Up page$/) do
  text = "Sign up"
  page.should have_content(text)
end

