class Api::V1::ItemsController < ApplicationController

  def index
    @items = Item.all
    respond_to { |format| format.json { render json: @items } }
  end

  def create
    @item = Item.create(item_params)
    respond_to { |format| format.json { render json: @item } }
  end

  def update
    @item = Item.update(item_params)
    respond_to { |format| format.json { render json: @item } }
  end

  def show
    @item = Item.find(params[:id])
    respond_to { |format| format.json { render json: @item } }
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

  private

  def item_params
    {
        item_type:       params[:item_type],
        name:            params[:name],
        value:           params[:value],
        qty:             params[:qty],
        price:           params[:price],
        category_id:     params[:category_id],
        manufacturer_id: params[:manufacturer_id]
    }
  end
end
