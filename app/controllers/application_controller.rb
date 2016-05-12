class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ExamineesHelper
  include ClustersHelper

  def session_exist?
    if ( !current_cluster.nil? || !current_examinee.nil? )
      flash[:success] = t "message.logged_in_with_other_account"
      redirect_to root_path
    end
  end

  def logged_in_examinee
    unless examinee_logged_in?
      flash[:danger] = t "message.please_log_in"
      redirect_to new_examinee_session_path
    end
  end
end
