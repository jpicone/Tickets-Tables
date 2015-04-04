class CreateReservations < ActiveRecord::Migration
  def up
    create_table :reservations do |t|
      t.integer :restaurant_ID
      t.datetime :reservation_date_time
      t.integer :party_size
      t.text :notes
      t.integer :user_ID
      # Add fields that let Rails automatically keep track
      # of when project tasks are added or modified:
      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
