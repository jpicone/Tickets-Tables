require 'spec_helper'
require 'rails_helper'

feature 'Creating Reservation' do
  before  do		
    restaurant = FactoryGirl.create(:restaurant, restaurant_name: "Reservation Test Restaurant")
  end
  scenario "Create new Restaurant" do
    visit '/restaurants/details/10'
    click_link "Add Reservation"
    fill_in 'reservation_reservation_date_time', with: "2015-05-10 00:20:15.1"
    fill_in 'reservation_party_size', with: "4"
    fill_in 'reservation_notes', with: "test note"
    click_button "Create Reservation"
    expect(page).to have_content("2015-05-10 00:20:15.1")
    expect(page).to have_content("4")
    expect(page).to have_content("test note")
  end

end
