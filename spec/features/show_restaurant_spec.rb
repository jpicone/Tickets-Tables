require 'spec_helper'
require 'rails_helper'

feature 'Showing Restaurants details' do
  before do
    visit '/restaurants/home'
  end
  scenario "Show Specific Restaurant details" do
  
  expect(page).to have_content("Outback")
  click_link "Outback"
  expect(page.current_url).to eql('http://www.example.com/restaurants/details/1')
  end
end

