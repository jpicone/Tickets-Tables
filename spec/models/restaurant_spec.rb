require 'rails_helper'
require 'spec_helper'
describe Restaurant do
 it 'has a valid factory' do
   expect(FactoryGirl.build(:restaurant)).to be_valid
  end
  it 'is invalid without a name'  do
   expect(FactoryGirl.build(:restaurant, restaurant_name: nil)).to_not be_valid
  end
  it 'is invalid without a store id'  do
   expect(FactoryGirl.build(:restaurant, store_ID: nil)).to_not be_valid
  end
  it 'is invalid without a phone number'  do
   expect(FactoryGirl.build(:restaurant, phone_number: nil)).to_not be_valid
  end
  it 'is invalid without a address'  do
   expect(FactoryGirl.build(:restaurant, address: nil)).to_not be_valid
  end

end
