require 'date'

class OrdersController < ApplicationController
  def index
    token = request.headers["Authentication"].split(" ")[1]
    @owner = Owner.find(decode(token)["user_id"])
    if @owner
      result = Order.find_by_sql(
        "SELECT orders.id, orders.date, orders.address, orders.comments, orders.status, 
        customers.first_name, customers.last_name, customers.email
        from orders INNER JOIN customers
        ON customers.id = orders.customer_id")
      render json: result
    else
      render json: {
        authenticated: false,
        message: "must be an owner"
      }, status: :unauthorized 
    end
  end
  
  def show
    token = request.headers["Authentication"].split(" ")[1]
    @owner = Owner.find(decode(token)["user_id"])
    if @owner
      # order = OrderItem.where(order_id: params[:id])
      # render json: order
      result = OrderItem.find_by_sql(
        "SELECT order_items.item_id, order_items.quantity,
        items.name, items.price, items.image, items.category
        from order_items INNER JOIN items
        ON order_items.item_id = items.id where order_items.order_id = " + params[:id] )
      render json: result
    else
      render json: {
        authenticated: false,
        message: "must be an owner"
      }, status: :unauthorized 
    end
  end

  def create
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
