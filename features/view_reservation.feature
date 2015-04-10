 Feature: View a reservation

  Given the following reservations exist:
  | restaurant_name         | reservation_date_time | party_size  |   notes|
  | Outback Steakhouse      | 1999-01-08 04:05:06   | 3 		 			|	 test	 |
  | Chipotle      		    	| 1999-01-07 04:05:06   | 4 		 			|	 test	 |
  | MacNGrill     					| 1999-01-09 04:05:06   | 1 		 			|	 test	 |
  | McDonalds      					| 1999-01-15 04:05:06   | 2 		 			|	 test	 |
  | Zios   									| 1999-01-21 04:05:06   | 5 		 			|	 test	 |
  | Olive Garden       			| 1999-01-03 04:05:06   | 2 		 			|	 test	 |


As an customer
So that I can view an existing reservation
I want to be able to view the details of my reservation of choice from a list of my reservations

Background: Given I am on the Restaurants home page
 
Scenario: Should be able to view a reservation
	When I follow "Chipotle" 
	Then I should be on the ViewRestaurant home page
	And I follow "Chipotle" 
	And I should see "Chipotle"	
	And I should see "1999-01-07 04:05:06"
	And I should see "4"
	And I should see "test"
	And I should not see "McDonalds"
	And I should not see "Zios"
	And I should not see "1999-01-08"

Scenario: Cancel viewing a reservation
	Given I am on the ViewReservation home page
	When I press "Back"
	Then I should be on the MyReservations home page
