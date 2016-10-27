class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ExamineesHelper
  include CanCan::ControllerAdditions

  def session_exist?
    unless current_examinee.nil?
      flash[:success] = t "message.logged_in_with_other_account"
      redirect_to root_path
    end
  end

  def logged_in_examinee
    unless user_signed_in?
      flash[:danger] = t "message.please_log_in"
      redirect_to new_examinee_session_path
    end
  end
  protected
  def current_ability
    if admin_signed_in?
      @current_ability ||= Ability.new(current_admin)
    else
      @current_ability ||= Ability.new(current_examinee)
    end
  end
end
