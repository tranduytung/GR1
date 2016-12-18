class Admins::RegisterTimesController < ApplicationController
  load_and_authorize_resource

  def edit
  end

  def update
    if @register_time.update_attributes register_time_params
      flash[:success] = "Update sucessfull"
      redirect_to root_path
    else
      flash[:danger] = "Update sucessfull"
      render :edit
    end
  end

  private
  def register_time_params
    params.require(:register_time).permit(:year, :start_aspiration_1,
      :start_aspiration_2, :start_aspiration_3, :end_aspiration_1,
      :end_aspiration_2, :end_aspiration_3)
  end
end

