Feature: display list of restaurants sorted by different criteria
 
  As an developer
  So that I can quickly browse restaurants
  I want to see restaurants sorted by restaurant name, address or phone number

Background: restaurants have been added to database

  Given the following restaurants exist:
  | restaurant_name         | address | phone_number |
  | Outback Steakhouse      | 900     | 000-000-0009 |
  | Chipotle      		    | 800     | 000-000-0003 |
  | MacNGrill     			| 600     | 000-000-0008 |
  | McDonalds      			| 700     | 000-000-0007 |
  | Zios   					| 150     | 000-000-0002 |
  | Olive Garden       		| 500     | 000-000-0001 |

  And I am on the Tickets&Tables home page

Scenario: sort restaurants alphabetically
  Then I should see "Chipotle" before "Zios"

Scenario: sort restaurants in increasing order of address
  Then I should see "MacNGrill" before "McDonalds"

Scenario: sort restaurants in increasing order of phone number
  Then I should see "Chipotle" before "MacNGrill"