class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(permit_item)
    if @item.save
      redirect_to @item
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private

  def permit_item
     params.require(:item).permit(:name, :description, :price)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
