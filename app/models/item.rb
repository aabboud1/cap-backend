class Item < ApplicationRecord
    has_many :OrderItems
    has_many :Orders, through: :OrderItems
end
