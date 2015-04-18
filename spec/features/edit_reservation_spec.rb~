require 'spec_helper'
require 'rails_helper'

feature 'Editing Restaurants ' do
  before do
    restaurant = FactoryGirl.create(:restaurant, restaurant_name: "Test to edit")
    visit '/restaurants/details/3'
    expect(page).to have_content("Test to edit")
  end
  scenario "Edit a Restaurant" do
    click_link "Edit"
    expect(page.current_url).to eql('http://www.example.com/restaurants/edit/3')
    fill_in 'restaurant_restaurant_name', with: "Edited name"
    click_button "Update Restaurant"
    expect(page).to have_content("Edited name")
  end

end
