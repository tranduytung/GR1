class Admins::UniversitiesController < ApplicationController
  load_and_authorize_resource

  def index
    @universities = @universities.page(params[:page]).per 10
  end

  def show
  end

  def export_file_excel
    @universities = University.all
    @date = Date.today.to_date
    respond_to do |format|
      format.html
      format.xlsx {render xlsx: 'export_file_excel', filename: "universities_#{@date}.xlsx"}
    end
  end

  def import_file_excel
    if params[:file].nil?
      flash[:alert] = t "admin.examinee.file_nil"
      redirect_to admins_universities_path
    else
      begin
        University.transaction do
          University.destroy_all
          University.reset_pk_sequence
          Major.reset_pk_sequence
          University.import(params[:file])
          notice = t 'admin.examinee.import_csv'
          redirect_to :back, notice: notice
        end
      rescue => err
        flash[:danger] = err.to_s
        redirect_to admins_universities_path
      end
    end
  end
end
