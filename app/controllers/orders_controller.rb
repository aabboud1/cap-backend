require 'date'

class OrdersController < ApplicationController
  def index
    render json: Orders.all
  end
  
  def show
    order = Order.find(params[:id])
    render json: order
  end

  def create
    byebug
    customer = Customer.find_or_create_by(
                first_name: params["first_name"],
                last_name: params["last_name"],
                email: params["email"]
    )
    order = Order.new(
      customer_id: customer["id"], 
      date: Date.parse(params["date"]),
      address: params["address"],
      comments: params["comments"],
      status: "pending"
    )

    if order.save
      items = params['items']
    
      errors = []
      for item in items
         orderitem = OrderItem.new(
          item_id: item["item_id"],
          order_id: order.id,
          quantity: item["quantity"]
        )
        if !orderitem.save
          errors.push(orderitem.errors)
        end
      end

      if errors.length > 0
        render json: {:errors => errors}, :status => 500
      else
        render json: {}
      end
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
