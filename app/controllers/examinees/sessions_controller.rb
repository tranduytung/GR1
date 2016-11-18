class Examinees::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  before_action :session_exist?, only: [:new]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    devise_parameter_sanitizer.for(:sign_in) { |u|
      u.permit(:people_id, :password) }
  end
end
