# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def yandex
    # byebug
    # https://oauth.yandex.ru/authorize
    # client_id     = 1c6dd3ee9d5b4ce5baee54d2c09dcaec
    # redirect_uri  = http://localhost:3000/users/auth/yandex/callback
    # response_type = code
    # state         = 16ed1c94496a6fbb8b4d0062c7dd1e874e63790e7bb9fb06
    omniauth_provider('YANDEX')
  end

  def github
    # byebug
    # https://github.com/login
    # client_id     = 9a2d962a2e052c47abc4
    # return_to     = /login/oauth/authorize
    # client_id     = 9a2d962a2e052c47abc4
    # redirect_uri  = http://localhost:3000/users/auth/github/callback
    # response_type = code
    # state         = f138b02b339a79435b34f61799508ce9d4323be06872d129
    omniauth_provider('GITHUB')
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    # byebug
    super
  end

  # DELETE /resource/sign_out
  def destroy
    # byebug
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def omniauth_provider(provider_name)
    render json: request.env['omniauth.auth']
    # @user = User.find_for_oauth(request.env['omniauth.auth'])
    # if @user.persisted?
    #   sign_in_and_redirect @user, event: :authentication
    #   set_flash_message(:notice, :success, kind: provider_name) if is_navigational_format?
    # end
  end
end
