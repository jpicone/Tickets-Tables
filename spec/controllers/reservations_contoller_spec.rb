require 'spec_helper'
require 'rails_helper'
describe ReservationsController do

 describe 'Destroying Reservations:' do

    it 'Should possible to destroy stored reservation' do
      reservation = mock_model(Reservation, :id => '20', :restaurant_ID => '1')
      Reservation.should_receive(:find).with('20').and_return(reservation)
			Reservation.should_receive(:find).with('20').and_return(reservation)
      reservation.should_receive(:delete)
      post :confirm_delete, { :id => '20' }
    end
  end

end
