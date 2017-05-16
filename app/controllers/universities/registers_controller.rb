class Universities::RegistersController < ApplicationController
  load_and_authorize_resource

  def index
    @search = current_university.registers.ransack params[:q]
    if params[:q].nil?
      @registers = current_university.registers.page(params[:page]).per 10
    else
      @registers = @search.result.page(params[:page]).per 10
    end
    # @registers = current_university.registers.aspiration_1
  end

  def elect
    @registers = current_university.registers.where(status: 2)
    @search = @registers.ransack params[:q]
    if params[:q].nil?
      @registers = @registers.page(params[:page]).per 10
    else
      @registers = @search.result.page(params[:page]).per 10
    end
  end

  def export_elect_excel
    @registers = current_university.registers.where(status: 2)
    @date = Date.today.to_date
    respond_to do |format|
      format.html
      format.xlsx {render xlsx: 'export_elect_excel', filename: "#{current_university.code}_elect_#{@date}.xlsx"}
    end
  end

  def admission
    @registers = current_university.registers.where(status: 4)
    @search = @registers.ransack params[:q]
    if params[:q].nil?
      @registers = @registers.page(params[:page]).per 10
    else
      @registers = @search.result.page(params[:page]).per 10
    end
  end

  def export_admission_excel
    @registers = current_university.registers.where(status: 4)
    @date = Date.today.to_date
    respond_to do |format|
      format.html
      format.xlsx {render xlsx: 'export_admission_excel', filename: "#{current_university.code}_admission_#{@date}.xlsx"}
    end
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
