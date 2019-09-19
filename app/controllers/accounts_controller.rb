class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  def show
  end

  def create
  end

  def edit
  end

  def update
    @account.update(permit_account)
    redirect_to @account
  end

  def destroy
  end

  private

  def permit_account
     params.require(:account).permit(:first_name, :last_name, :street, :zipcode, :city, :stripe_customer_id)
  end

  def set_account
    @account = Account.find(params[:id])
  end
end
