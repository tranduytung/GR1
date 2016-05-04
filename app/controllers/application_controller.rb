class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def session_exist?
    if (!current_cluster.nil? || !current_examinee.nil?)
      flash[:success] = t "message.logged_in_with_other_account"
      redirect_to root_path
    end
  end
end
