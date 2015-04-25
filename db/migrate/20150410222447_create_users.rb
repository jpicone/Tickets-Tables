#Migratation source code for Users
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |column|
      column.string :email
      column.string :first_name
      column.string :last_name
      column.string :password_digest
      column.string :role
      column.timestamps
    end
  end

	def self.down
    drop_table :users
  end

end
