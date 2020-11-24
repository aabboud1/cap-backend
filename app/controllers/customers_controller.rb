class CustomersController < ApplicationController

  
  def index
    render json: Customer.all
  end

  def show
    customer = Customer.find(params[:id])
    render json: customer
  end

  def create
    customer = Customer.new(customer_params)
    if customer.save
      render json: customer
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:name, :email, :address)
    end
end
