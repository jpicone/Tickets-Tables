#Migratation source code for Restaurants
class CreateRestaurants < ActiveRecord::Migration
  def up
    create_table :restaurants do |column|
      column.string :restaurant_name
      column.string :store_ID
      column.string :phone_number
      column.string :address
      column.timestamps
    end
  end

  def down
    drop_table :restaurants
  end
end
