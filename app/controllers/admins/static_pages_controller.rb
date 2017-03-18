class Admins::StaticPagesController < ApplicationController
  def index
    redirect_to new_admin_session_path if !admin_signed_in?
  end
end
