require 'spec_helper'
require 'rails_helper'
describe RestaurantsController do

 describe 'Destroying Restaurants:' do

    it 'Should possible to destroy stored restaurants' do
     restaurant = mock_model(Restaurant, :restaurant_name => "Willy's Wacky Wieners", :phone_number => '719-000-1234', :address => '123', :store_ID => "1", :id => '20')

      Restaurant.should_receive(:find).with('20').and_return(restaurant)
      restaurant.should_receive(:delete)
      post :confirm_delete, { :id => '20' }
    end
  end

end
