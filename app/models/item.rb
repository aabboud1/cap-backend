class Item < ApplicationRecord
    has_many :orderItems
    has_many :orders, through: :orderItem
end
