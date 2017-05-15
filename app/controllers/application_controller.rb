class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource
  include ExamineesHelper
  include RegistersHelper
  include CanCan::ControllerAdditions

  def session_exist?
    unless current_examinee.nil?
      flash[:success] = t "message.logged_in_with_other_account"
      redirect_to root_path
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = t("access_denied")
    redirect_to root_url
  end

  def logged_in_examinee
    unless user_signed_in?
      flash[:danger] = t "message.please_log_in"
      redirect_to new_examinee_session_path
    end
  end
  protected
  def layout_by_resource
    if (devise_controller? && resource_name == :admin) || admin_signed_in?
      "admin_application"
    elsif (devise_controller? && resource_name == :examinee) || examinee_signed_in?
      "examinee_application"
    elsif (devise_controller? && resource_name == :university) || university_signed_in?
      "university_application"
    else
      "application"
    end
  end
  def current_ability
    if admin_signed_in?
      @current_ability ||= Ability.new(current_admin)
    elsif examinee_signed_in?
      @current_ability ||= Ability.new(current_examinee)
    else
      current_ability ||= Ability.new(current_university)
    end
  end
end
