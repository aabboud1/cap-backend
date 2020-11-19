class Order < ApplicationRecord
    belongs_to :Customer
    has_many :OrderItems
    has_many :Items, through: :OrderItem
end
