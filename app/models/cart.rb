class Cart < ApplicationRecord
  belongs_to :user, dependent: :destroy

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
