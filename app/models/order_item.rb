class OrderItem < ApplicationRecord
    belongs_to :Order, optional: true
    belongs_to :Item, optional: true
end
