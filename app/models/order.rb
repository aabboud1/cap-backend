class Order < ApplicationRecord
    belongs_to :customer, optional: true
    has_many :orderItems
    has_many :items, through: :orderItems
end
