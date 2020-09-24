class ItemsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  # before_action :authenticate_user

  def index
    @items = params[:category_id].present? ? Item.where(category_id: params[:category_id]) : Item
    @items = @items.all.to_a.group_by(&:category_id)
  end

  def filter
    search = {}
    search[:manufacturer_id] = params[:manufacturer_ids] if params[:manufacturer_ids].present?
    search[    :category_id] = params[    :category_id ] if params[    :category_id ].present?
    @items = Item.where(search).all.to_a.group_by(&:category_id)
    render layout: false
  end
end
