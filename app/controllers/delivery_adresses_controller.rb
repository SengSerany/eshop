class DeliveryAdressesController < ApplicationController
  before_action :set_delivery_adress, only: [:show, :edit, :update, :destroy]

  def new
    @delivery_adress = DeliveryAdress.new
  end

  def create
    @delivery_adress = DeliveryAdress.new(require_delivery_adress)
    @delivery_adress.user_id = current_user.id
    if @delivery_adress.save
      redirect_to @account
    end
  end

  def edit
  end

  def update
    @delivery_adress.update(require_delivery_adress)
    redirect_to @account
  end

  def destroy
  end

  private

  def set_delivery_adress
    @delivery_adress = DeliveryAdress.find(params[:id])
  end

  def require_delivery_adress
    params.require(:delivery_adress).permit(:street, :zipcode, :city)
  end
end
