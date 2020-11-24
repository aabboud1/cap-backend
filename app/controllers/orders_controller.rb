class OrdersController < ApplicationController

  def index
    render json: Orders.all
  end

  
  def show
    order = Order.find(params[:id])
  end

  def create
    order = Order.new(order_params)
    if order.save
      render json: order
    end
  end

  
  def destroy
    Order.destroy(params[:id])
    render json: Order.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:customer_id, :date, :address, :comments, :status)
    end
end
