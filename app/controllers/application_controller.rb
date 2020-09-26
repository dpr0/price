# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= session[:user_id] ? User.find(session[:user_id]) : nil
  end

  def authorize
    redirect_to root_url, alert: 'You must be signed in to access this page.' unless current_user
  end
end
