require 'spec_helper'
require 'rails_helper'

feature 'Showing Restaurants details' do
  before do
    restaurant = FactoryGirl.create(:restaurant, restaurant_name: "test name 1")
    visit '/restaurants/home'
  end
  scenario "Show Specific Restaurant details" do
  
  expect(page).to have_content("test name 1")
  click_link "test name 1"
  expect(page.current_url).to eql('http://www.example.com/restaurants/details/4')
  end
end

