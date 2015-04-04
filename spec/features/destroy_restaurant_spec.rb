require 'spec_helper'
require 'rails_helper'

feature 'Destroying Restaurants ' do
  before do
    restaurant = FactoryGirl.create(:restaurant, restaurant_name: "Test to destroy")
    visit '/restaurants/details/2'
    expect(page).to have_content("Test to destroy")
  end
  scenario "Destroy a Restaurant" do
    click_link "Delete"
    expect(page.current_url).to eql('http://www.example.com/restaurants/delete/2')
    expect(page).to have_content("Test to destroy")
    click_link "Confirm Delete"
    expect(page).to have_no_content("Test to destroy")
  end

end