class ItemsController < ApplicationController

  def index
    @items = params[:category_id].present? ? Item.where(category_id: params[:category_id]) : Item.all
    @categories = Category.all
    @manufacturers = Manufacturer.all
  end

  def filter
    @items = Item.where(manufacturer_id: 1)
    render layout: false
  end

end
