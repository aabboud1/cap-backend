class OrderItemsController < ApplicationController
    def index
        render json: OrderItem.all
    end

    def show 
        oi = OrderItem.find(params["id"].to_i)
        render json: oi
    end
end
