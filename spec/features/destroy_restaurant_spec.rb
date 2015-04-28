require 'spec_helper'
require 'rails_helper'

feature 'Destroying Restaurants ' do
  before do
    visit '/restaurants/delete/2'
  end
  scenario "Destroy a Restaurant" do
    expect(page.current_url).to eql('http://www.example.com/restaurants/delete/2')
    expect(page).to have_content("Are you sure you want to delete this restaurant?")
    click_link "Confirm Delete"
    expect(page).to have_content("Restaurant successfully deleted!")
  end

end
