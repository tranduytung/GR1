class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def session_exist?
    if (!current_cluster.nil? || !current_examinee.nil?)
      flash[:success] = t "message.log_in"
      redirect_to root_path
    end
  end
end
