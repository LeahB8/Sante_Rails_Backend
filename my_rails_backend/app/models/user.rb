class User < ApplicationRecord
    has_many :concerns, through: :user_concern_tables
    has_many :user_concern_tables
    has_secure_password
    #add validations 
end
