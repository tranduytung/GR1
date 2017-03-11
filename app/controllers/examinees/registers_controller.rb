class Examinees::RegistersController < ApplicationController
  load_and_authorize_resource
  def new
    register_major current_examinee, params[:major_id],
      params[:aspiration], params[:group_exam_id] if params[:aspiration] == "1"
    register_major current_examinee, params[:major_id],
      params[:aspiration], params[:group_exam_id] if params[:aspiration] == "2"
    register_major current_examinee, params[:major_id],
      params[:aspiration], params[:group_exam_id] if params[:aspiration] == "3"
    redirect_to examinees_registers_path
  end

  def index
    @current_examinee = current_examinee
    unless params[:examinee].nil?
      if @current_examinee.update_attributes current_examinee_register_params
        flash[:success] = "update thanh cong"
      else
        flash[:success] = "update khong thanh cong"
      end
      redirect_to examinees_registers_path
    end
  end

  private
  def current_examinee_register_params
    params.require(:examinee).permit registers_attributes: [:id,
      :major_id, :_destroy]
  end
end
