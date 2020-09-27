# frozen_string_literal: true

class Api::V1::ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all_cached
    respond_to { |format| format.json { render json: @manufacturers } }
  end
end
