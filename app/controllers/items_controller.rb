# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = params[:category_id].present? ? Item.where(category_id: params[:category_id]) : Item
    @items = @items.all.to_a.group_by(&:category_id)
  end

  def kayuk
    @items = params[:item_type].present? ? Item.where(item_type: params[:item_type]) : Item
    @items = @items.all.to_a.group_by(&:item_type)
  end

  def filter
    search = {}
    search[:manufacturer_id] = params[:manufacturer_ids] if params[:manufacturer_ids].present?
    search[:category_id] = params[:category_id] if params[:category_id].present?
    @items = Item.where(search).all.to_a.group_by(&:category_id)
    render layout: false
  end
end
