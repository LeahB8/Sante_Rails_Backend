class Remedy < ApplicationRecord
    has_many :concerns, through: :remedy_concern_tables
    has_many :remedy_concern_tables
end
