class User < ActiveRecord::Base
    has_secure_password
    has_many :Icorrections
    has_many :Issues
    has_many :PReminders
    has_many :CodeTasks
 	validates 	:name, presence: true
end
