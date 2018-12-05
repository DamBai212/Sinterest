class User < ApplicationRecord
    has_many :sins
    has_many :categories, through: :sins
end
