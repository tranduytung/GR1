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
        flash[:success] = "Sửa thành công"
      else
        flash[:success] = "Sửa thất bại"
      end
      redirect_to examinees_registers_path
    end
  end

  def admission
    @register = Register.find_by(id: params[:register])
    @register.examinee.registers.where(status: 2).update_all status: 5
    @register.examinee.registers.where(status: 4).update_all status: 5
    @register.update_attributes status: 4
    redirect_to examinees_registers_path
  end

  def cancel
    @register = Register.find_by(id: params[:register])
    @register.examinee.registers.where(status: 5).update_all status: 2
    @register.update_attributes status: 2
    redirect_to examinees_registers_path
  end

  private
  def current_examinee_register_params
    params.require(:examinee).permit registers_attributes: [:id,
      :major_id, :_destroy]
  end
end
