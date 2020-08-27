# frozen_string_literal: true

class AdClients::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end
  
  #ゲストユーザーログイン
  def new_guest
    ad_client = AdClient.guest_ad_client
    sign_in ad_client
    redirect_to dashboard_ad_client_path(current_ad_client), notice: 'ゲストユーザーとしてログインしました。'
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end
  def after_sign_in_path_for(resource)
      dashboard_ad_client_path(resource)
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  def after_sign_out_path_for(resource)
      new_ad_client_session_path
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
