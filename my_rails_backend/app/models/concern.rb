class Concern < ApplicationRecord
    has_many :user_concern
    has_many :users, through: :user_concerns
end
