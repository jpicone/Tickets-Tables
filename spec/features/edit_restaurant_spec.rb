require 'spec_helper'
require 'rails_helper'

feature 'Editing Restaurants ' do
  before  do
    restaurant = FactoryGirl.create(:restaurant, restaurant_name: "Test to edit")
  end
  scenario "Edit a Restaurant" do
    visit '/restaurants/edit/3'
    expect(page.current_url).to eql('http://www.example.com/restaurants/edit/3')
    fill_in 'restaurant_restaurant_name', with: "Edited name"
    click_button "Update Restaurant"
    expect(page).to have_content("Edited name")
  end
    scenario "Edit Restaurant invalid phone number" do
      visit '/restaurants/edit/4'
      expect(page.current_url).to eql('http://www.example.com/restaurants/edit/4')
      fill_in 'restaurant_phone_number', with: "7199999999"
      click_button "Update Restaurant"
      expect(page).to have_content("Invalid Input!")
  end
    scenario "Edit Restaurant missing name" do
      visit '/restaurants/edit/5'
      expect(page.current_url).to eql('http://www.example.com/restaurants/edit/5')
      fill_in 'restaurant_restaurant_name', with: ""
      click_button "Update Restaurant"
      expect(page).to have_content("Invalid Input!")
  end
    scenario "Edit Restaurant missing phone number" do
      visit '/restaurants/edit/6'
      expect(page.current_url).to eql('http://www.example.com/restaurants/edit/6')
      fill_in 'restaurant_phone_number', with: ""
      click_button "Update Restaurant"
      expect(page).to have_content("Invalid Input!")
  end
    scenario "Edit Restaurant missing store id" do
      visit '/restaurants/edit/7'
      expect(page.current_url).to eql('http://www.example.com/restaurants/edit/7')
      fill_in 'restaurant_store_ID', with: ""
      click_button "Update Restaurant"
      expect(page).to have_content("Invalid Input!")
  end
    scenario "Edit Restaurant missing address" do
      visit '/restaurants/edit/8'
      expect(page.current_url).to eql('http://www.example.com/restaurants/edit/8')
      fill_in 'restaurant_address', with: ""
      click_button "Update Restaurant"
      expect(page).to have_content("Invalid Input!")
  end

end
