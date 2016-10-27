class User < ActiveRecord::Base
    has_secure_password
    has_many :Icorrection
    has_many :Issue
 	validates 	:name, presence: true
end
