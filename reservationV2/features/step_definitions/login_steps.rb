Given(/^I am on the Home Page$/) do
  visit "localhost:3000"
end

When(/^I click Login$/) do
  find_link("Login").click
end

Then(/^I should see the Login page$/) do
end
