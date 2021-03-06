require 'rails_helper'
require 'spec_helper'
describe Reservation do
 it 'has a valid factory' do
   expect(FactoryGirl.build(:reservation, reservation_date_time: "2015-04-13 00:20:15" )).to be_valid
  end
  it 'is invalid without a :reservation_date_time'  do
   expect(FactoryGirl.build(:reservation, reservation_date_time: nil)).to_not be_valid
  end
  it 'is invalid without a store party_size'  do
   expect(FactoryGirl.build(:reservation, party_size: nil)).to_not be_valid
  end
  it 'is invalid without a restaurant_ID'  do
   expect(FactoryGirl.build(:reservation, restaurant_ID: nil)).to_not be_valid
  end
  it 'is invalid without a :user_ID'  do
   expect(FactoryGirl.build(:reservation, user_ID: nil)).to_not be_valid
  end

end
