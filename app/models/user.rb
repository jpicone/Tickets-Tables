class User < ActiveRecord::Base

ROLES = %w[admin owner user]
has_secure_password

validates :first_name, presence: true  
validates :last_name, presence: true  
validates :email, presence: true  
validates :role, presence: true  
validates :password_digest, presence: true  
validates_uniqueness_of :email

end
