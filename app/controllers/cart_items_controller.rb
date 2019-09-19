class CartItemsController < ApplicationController
  before_action :set_cart_item, only: [:update, :destroy, :more, :less]

  def create
    @cart_item = @cart.add_or_create_cart_item_link(params, @cart)
  	flash[:success] = "Le produit a bien été ajouté à votre panier"
  	redirect_to root_path
  end

  def update

    redirect_to @cart
  end

  def destroy
    @cart_item.destroy
    redirect_to @cart
  end

  private

  def set_cart_item
     @cart_item = CartItem.find(params[:id])
  end

  def permit_cart_item
     params.require(:cart_items).permit(:cart_id, :item_id)
  end
end
