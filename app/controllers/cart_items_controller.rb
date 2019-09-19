class CartItemsController < ApplicationController
  def create
  	@cart_item = CartItem.new(item_id: params[:format], cart_id: @cart.id)
  	if @cart_item.save
  		flash[:success] = "Le produit a bien été ajouté à votre panier"
  		redirect_to root_path
  	end
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
