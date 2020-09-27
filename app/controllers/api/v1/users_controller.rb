# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    respond_to { |format| format.json { render json: @users } }
  end
end
