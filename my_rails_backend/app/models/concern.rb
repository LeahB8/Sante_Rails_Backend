class Concern < ApplicationRecord
    has_many :users, through: :user_concern_tables
    has_many :remedies, through: :remedy_concern_tables
    has_many :user_concern_tables
    has_many :remedy_concern_tables

end
