require 'spec_helper'
require 'rails_helper'

feature 'Destroying Restaurants ' do
  before do
    visit '/restaurants/details/2'
    expect(page).to have_content("Restaurant Details")
  end
  scenario "Destroy a Restaurant" do
    click_link "Delete"
    expect(page.current_url).to eql('http://www.example.com/restaurants/delete/2')
    expect(page).to have_content("Are you sure you want to delete this restaurant?")
    click_link "Confirm Delete"
    expect(page).to have_content("Restaurant successfully deleted!")
  end

end
