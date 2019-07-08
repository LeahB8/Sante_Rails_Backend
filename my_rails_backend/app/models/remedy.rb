class Remedy < ApplicationRecord
    has_many :remedy_concerns
    has_many :concerns, through: :remedy_concerns
end
