class Category < ApplicationRecord
    has_many :sins
    has_many :users, through: :sins
end
