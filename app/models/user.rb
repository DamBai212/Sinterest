class User < ApplicationRecord
    has_many :sins
    has_many :categories, through: :sins

    has_secure_password
    validates :name, presence: true
    validates :name, uniqueness: true

end
