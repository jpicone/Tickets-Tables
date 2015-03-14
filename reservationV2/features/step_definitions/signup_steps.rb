Given(/^I am on the Home Page$/) do
  visit "localhost:3000"
end

When(/^I click Login$/) do
  find_link("Signup").click
end

Then(/^I should see the Signup page$/) do
end
