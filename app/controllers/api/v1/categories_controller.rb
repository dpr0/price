class Api::V1::CategoriesController < ApplicationController

  def index
    @categories = Category.all_cached
    respond_to { |format| format.json { render json: @categories } }
  end
end
