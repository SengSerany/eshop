class CartsController < ApplicationController

  def show
  	@inMyCart = @cart.in_my_cart(@cart)
  end

  def create
  end

  def update
  end

  def destroy
  end
end
