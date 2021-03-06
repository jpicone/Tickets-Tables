require 'spec_helper'
require 'rails_helper'

describe User do
	describe 'Usernames' do
		hash 
		it 'should allow a new user to be added' do
			test1 = User.create({:first_name=> "Bob", :last_name => "Bill",:role => "user", :password => "password1", :email => "bob@notreal.com"})
			expect(test1).to be_valid
		end
		it 'should not allow copys' do
			test2 = User.create({:first_name => "Bill", :last_name => "Bill",:role => "user", :password => "password1", :email => "bob@notreal.com"})
			expect(test2).to be_valid
			copy = User.create({:first_name => "Bill", :last_name => "Bill",:role => "user", :password => "password1", :email => "bob@notreal.com"})
			expect(copy).to be_invalid
		end
	end



it 'has a valid factory' do
   expect(FactoryGirl.build(:user)).to be_valid
  end
  it 'is invalid without a first name'  do
   expect(FactoryGirl.build(:user, first_name: nil)).to_not be_valid
  end
  it 'is invalid without a last name'  do
   expect(FactoryGirl.build(:user, last_name: nil)).to_not be_valid
  end
  it 'is invalid without a password'  do
   expect(FactoryGirl.build(:user, password_digest: nil)).to_not be_valid
  end
  it 'is invalid without a email'  do
   expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end
  it 'is invalid without a role'  do
   expect(FactoryGirl.build(:user, role: nil)).to_not be_valid
  end
end
