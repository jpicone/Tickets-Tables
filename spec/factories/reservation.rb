FactoryGirl.define do
        factory :reservation do
          restaurant_ID '1'
          party_size '3'
          notes 'first reservation'
	  reservation_date_time '2'
          user_ID '1'
	end
end

