class User < ApplicationRecord
    has_many :user_concerns
    has_many :concerns, through: :user_concerns
    has_many :goals
    has_secure_password
    #add validations 
end
