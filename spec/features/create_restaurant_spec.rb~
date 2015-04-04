require 'spec_helper'
require 'rails_helper'

feature 'Creating Restaurant' do
  before do
    visit '/restaurants/home'
    click_link "Add New Restaurant"
  end
  scenario 'can create a new restaurant' do
    fill_in 'restaurant_restaurant_name', with: "test name"
    fill_in 'restaurant_store_ID', with:	"test ID"
    fill_in 'restaurant_phone_number', with: "test phonenumber"
    fill_in 'restaurant_address', with: "test address"
    click_button "Create Restaurant"
    expect(page).to have_content("test name")
  end
end
