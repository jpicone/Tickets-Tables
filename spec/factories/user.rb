FactoryGirl.define do
	factory :user do
		first_name 'Addam'
		last_name 'West'
		role 'Admin'
		password_digest 'batman'
                email "fake@notreal.com"
	end

end

