class ItemsController < ApplicationController

  def index
    render json: Item.all
  end
  
  def show
    item = Item.find(params[:id])
    render json: item
  end

  def create
    item = Item.new(item_params)
    if item.save
      render json: item
    end
  end

  def update
    item = Item.find(params["id"])
    item.update(:name, :price, :image)
  end

  def destroy
    item = Item.destroy(params[:id])
    render json: Item.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :price, :image, :category)
    end
end
