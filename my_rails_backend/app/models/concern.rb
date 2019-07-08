class Concern < ApplicationRecord
    has_many :user_concerns
    has_many :remedy_concerns
    has_many :users, through: :user_concerns
    has_many :remedies, through: :remedy_concerns
end
