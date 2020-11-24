class OrderItemsController < ApplicationController
 
  def index
    render json: OrderItem.all
  end

  # GET /order_items/1
  # GET /order_items/1.json
  def show
    orderItem = OrderItem.find(params[:id])
    render json: orderItem
  end

  def create
    order_item = OrderItem.new(order_item_params)
    if order_item.save
      render json: order_item
    end
  end

  # PATCH/PUT /order_items/1
  # PATCH/PUT /order_items/1.json
  def update
    order_item = OrderItem.find(params["id"])
    order_item.update(:quantity, :comment)
  end
  end

 
  def destroy
    order_item = OrderItem.destroy(params[:id])
    render json: OrderItem.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_item
      @order_item = OrderItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_item_params
      params.require(:order_item).permit(:order_id, :item_id, :quantity, :comment)
    end
end
