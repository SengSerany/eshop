class Cart < ApplicationRecord
  belongs_to :user, dependent: :destroy

  def add_or_create_cart_item_link(params, cart)
  	if CartItem.find_by(cart_id: cart.id, item_id: params[:format]) == nil
  		@cart_item = CartItem.new(item_id: params[:format], cart_id: cart.id, quantity: 1)
  	else
  		@cart_item = CartItem.find_by(cart_id: cart.id, item_id: params[:format])
  		@cart_item.update(quantity: @cart_item.quantity + 1)
  	end
  end

  def in_my_cart(cart)
		list_item_to_cart = CartItem.select{|cart_item| cart_item.cart_id == cart.id}
		items = []

		list_item_to_cart.each do |link_between_item_to_cart|
			item = Item.find(link_between_item_to_cart.item_id)
			items << item
		end
		return items
	end
end
