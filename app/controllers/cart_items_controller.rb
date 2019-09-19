class CartItemsController < ApplicationController
  def create
    @cart_item = @cart.add_or_create_cart_item_link(params, @cart)
  	flash[:success] = "Le produit a bien été ajouté à votre panier"
  	redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private

  def permit_cartItems
     params.require(:cart_items).permit(:cart_id, :item_id)
  end
end
