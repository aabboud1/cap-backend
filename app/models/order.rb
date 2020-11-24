class Order < ApplicationRecord
    belongs_to :Customer, optional: true
    has_many :OrderItems
    has_many :Items, through: :OrderItems
end
