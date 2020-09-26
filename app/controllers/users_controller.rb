class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    @user = User.find_or_initialize_by(uid: params[:user][:uid])
    @user.attributes = { email: @user.email || params[:user][:email],
                         name:  @user.name  || params[:user][:name],
                         phone: @user.phone || params[:user][:phone] }
    @user.save
    session[:user_id] = @user.id
    redirect_to root_url
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_url
  end

  # def index
  #   head(:ok)
  # end
  #
  # def auth
  #   "http://localhost:3000/users/auth/yandex/callback"
  #
  #   params[:state]         # https://social.yandex.ru/broker2/authz_in_web/a6017f00612a4a5c961dedfdc062d7cd/callback
  #   params[:redirect_uri]  # https://social.yandex.net/broker/redirect
  #   params[:response_type] # code
  #   params[:client_id]     # dvitvitskiy.pro@gmail.com
  #   render status: :ok, json: { request_id: '' }
  # end
  #
  # def unlink
  #   render status: :ok, json: { request_id: '' }
  # end
  #
  # def devices
  #   render status: :ok, json: {
  #       request_id: '',
  #       payload: {
  #           user_id: '',
  #           devices: [
  #               {
  #                   id: '',
  #                   name: '',
  #                   description: '',
  #                   room: '',
  #                   type: '',
  #                   custom_data: {},
  #                   capabilities: [
  #                       capability1: {},
  #                       capability2: {}
  #                   ],
  #                   properties: [
  #                       property1: {},
  #                       property2: {}
  #                   ],
  #                   device_info: {
  #                       manufacturer: '',
  #                       model: '',
  #                       hw_version: '',
  #                       sw_version: ''
  #                   }
  #               }
  #           ]
  #       }
  #   }
  # end
  #
  # def query
  #   render status: :ok, json: { devices: [ { id: '', custom_data: {} } ] }
  # end
  #
  # def action
  #   render status: :ok, json: {
  #       payload: {
  #           devices: [
  #               {
  #                   id: '',
  #                   custom_data: {},
  #                   capabilities: [
  #                       capability1: {},
  #                       capability2: {}
  #                   ]
  #               }
  #           ]
  #       }
  #   }
  # end
end
