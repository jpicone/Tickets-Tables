require 'spec_helper'
require 'rails_helper'

feature 'Creating Restaurant' do
  before do
    visit '/restaurants/create'
  end
  scenario 'can create a new restaurant' do
    fill_in 'restaurant_restaurant_name', with: "test name"
    fill_in 'restaurant_store_ID', with:	"test ID"
    fill_in 'restaurant_phone_number', with: "719-123-4567"
    fill_in 'restaurant_address', with: "test address"
    click_button "Create Restaurant"
    expect(page).to have_content("test name")
  end
  scenario 'canot create a restaurant with invalid phone number ' do
    fill_in 'restaurant_restaurant_name', with: "test name"
    fill_in 'restaurant_store_ID', with:	"test ID"
    fill_in 'restaurant_phone_number', with: "7191234567"
    fill_in 'restaurant_address', with: "test address"
    click_button "Create Restaurant"
    expect(page).to have_content("Invalid Input!")
  end
    scenario 'canot create a restaurant with missing name' do
    fill_in 'restaurant_restaurant_name', with: ""
    fill_in 'restaurant_store_ID', with:	"test ID"
    fill_in 'restaurant_phone_number', with: "719-123-4567"
    fill_in 'restaurant_address', with: "test address"
    click_button "Create Restaurant"
    expect(page).to have_content("Invalid Input!")
  end
    scenario 'canot create a restaurant with missing ID' do
    fill_in 'restaurant_restaurant_name', with: "test name"
    fill_in 'restaurant_store_ID', with:	""
    fill_in 'restaurant_phone_number', with: "719-123-4567"
    fill_in 'restaurant_address', with: "test address"
    click_button "Create Restaurant"
    expect(page).to have_content("Invalid Input!")
  end
    scenario 'canot create a restaurant with missing phone number' do
    fill_in 'restaurant_restaurant_name', with: "test name"
    fill_in 'restaurant_store_ID', with:	"test ID"
    fill_in 'restaurant_phone_number', with: ""
    fill_in 'restaurant_address', with: "test address"
    click_button "Create Restaurant"
    expect(page).to have_content("Invalid Input!")
  end
        scenario 'canot create a restaurant with missing test address' do
    fill_in 'restaurant_restaurant_name', with: "test name"
    fill_in 'restaurant_store_ID', with:	"test ID"
    fill_in 'restaurant_phone_number', with: "719-123-4567"
    fill_in 'restaurant_address', with: ""
    click_button "Create Restaurant"
    expect(page).to have_content("Invalid Input!")
  end
end
