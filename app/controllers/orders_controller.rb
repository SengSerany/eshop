class OrdersController < ApplicationController
	before_action :authenticate_adress

	def new
		@order = Order.new
		@inMyCart = @cart.in_my_cart(@cart)
	end

  def create
  	@order = Order.create(user_id: current_user.id)
  	redirect_to @order
  end

  def show
  	@order = Order.find(params[:id])
  end

  private

  def authenticate_adress
  	if @account.first_name == nil || @account.last_name == nil || @account.street == nil ||  @account.zipcode == nil || @account.city == nil
  		redirect_to edit_account_path(@account)
  	end
  end
end
