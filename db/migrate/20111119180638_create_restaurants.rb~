class CreateRestaurants < ActiveRecord::Migration
  def up
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :store_ID
      t.string :phone_number
      t.string :address
      t.integer:max_occupancy
      # Add fields that let Rails automatically keep track
      # of when project tasks are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :restaurants
  end
end
