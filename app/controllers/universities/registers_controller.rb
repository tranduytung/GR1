class Universities::RegistersController < ApplicationController
  load_and_authorize_resource

  def index
    @registers = current_university.registers.aspiration_1
  end

  def export_file_excel
    @majors = current_university.majors
    @date = Date.today.to_date
    respond_to do |format|
      format.html
      format.xlsx {render xlsx: 'export_file_excel', filename: "#{current_university.code}majors_#{@date}.xlsx"}
    end
  end

  def import_file_excel
    if params[:file].nil?
      flash[:alert] = t "admin.examinee.file_nil"
      redirect_to universities_majors_path
    else
      begin
        Major.transaction do
          current_university.majors.destroy_all
          Major.reset_pk_sequence
          Major.import(params[:file], current_university.id)
          notice = t 'admin.examinee.import_csv'
          redirect_to :back, notice: notice
        end
      rescue => err
        flash[:danger] = err.to_s
        redirect_to universities_majors_path
      end
    end
  end
end
