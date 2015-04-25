#Migratation source code for Reservations
class CreateReservations < ActiveRecord::Migration
  def up
    create_table :reservations do |column|
      column.integer :restaurant_ID
      column.datetime :reservation_date_time
      column.integer :party_size
      column.text :notes
      column.integer :user_ID
      # Add fields that let Rails automatically keep track
      # of when project tasks are added or modified:
      column.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
