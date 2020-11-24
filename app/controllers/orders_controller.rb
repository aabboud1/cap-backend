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
    customer = get_customer(
                params["first_name"],
                params["last_name"],
                params["email"]
    )
    order = Order.new(
      customer_id: customer["id"], 
      date: Date.parse(params["date"]),
      address: params["address"],
      comments: params["comments"],
      status: "pending"
    )
    # figure out how to set items as an array in postman
    # it will look like this:
    # items: [{item_id: 1, quantity: 10, comment:'abc..'}, ....]
    # you should be able to see the array when you debug params["items"]
    # move the create order item into a private method (just like customer)
    # call that method after order 
    # make sure the order_item table is populated correctly. 
    # fix the UI
    if order.save # if order is saved and order_item is saved then proceed.
      render json: {}
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

    #####################################################################
    #                           Helper Methods                          #
    #####################################################################

    def get_customer(first_name, last_name, email)
      # check if it's a returning customer
      customer = Customer.find_by(first_name: first_name, last_name: last_name, email: email)
      # if customer is found return the actual customer
      if customer
        customer
      else
      # if it's a new customer create a new record
        customer = Customer.new(first_name: first_name, last_name: last_name, email: email)
        if customer.save
          customer
        end
      end
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:customer_id, :date, :address, :comments, :status)
    end
end
