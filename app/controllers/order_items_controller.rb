class OrderItemsController < ApplicationController
    def index
        render json: OrderItem.all
    end
end
