class Admins::RegisterTimesController < ApplicationController
  load_and_authorize_resource

  def edit
  end

  def update
    if @register_time.update_attributes register_time_params
      flash[:success] = "Sửa thời gian các pha thành công"
      redirect_to root_path
    else
      flash[:danger] = "Sửa thời gian các pha thất bại"
      render :edit
    end
  end

  private
  def register_time_params
    params.require(:register_time).permit(:year, :start_aspiration_1,
      :end_aspiration_1, :start_university_manage, :end_university_manage,
      :start_update_benchmark_1, :end_update_benchmark_1,
      :start_admission_1, :end_admission_1,
      :start_manage_admission_1, :end_manage_admission_1)
  end
end

