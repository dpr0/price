class SessionsController < ApplicationController
  def create
    # byebug
    @user = User.find_or_create_by(auth_hash)
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end