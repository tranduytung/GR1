class Universities::BenchmarksController < ApplicationController
  before_action :check_university

  def index
    @majors = current_university.majors.includes(:major_infos)
  end

  def show
  end

  # def edit
  # end

  # def update
  #   if @major.update_attributes major_params
  #     flash[:success] = t "admin.examinee.edit_success"
  #     redirect_to universities_majors_path
  #   else
  #     flash[:danger] = t "admin.examinee.edit_failed"
  #     render :edit
  #   end
  # end

  # def destroy
  #   if @major.destroy
  #     flash[:success] = t "admin.examinee.delete_success"
  #   else
  #     flash[:danger] = t "admin.examinee.delete_fail"
  #   end
  #   redirect_to universities_majors_path
  # end

  # def export_file_excel
  #   @majors = current_university.majors
  #   @date = Date.today.to_date
  #   respond_to do |format|
  #     format.html
  #     format.xlsx {render xlsx: 'export_file_excel', filename: "#{current_university.code}majors_#{@date}.xlsx"}
  #   end
  # end

  # def import_file_excel
  #   if params[:file].nil?
  #     flash[:alert] = t "admin.examinee.file_nil"
  #     redirect_to universities_majors_path
  #   else
  #     begin
  #       Major.transaction do
  #         current_university.majors.destroy_all
  #         Major.reset_pk_sequence
  #         Major.import(params[:file], current_university.id)
  #         notice = t 'admin.examinee.import_csv'
  #         redirect_to :back, notice: notice
  #       end
  #     rescue => err
  #       flash[:danger] = err.to_s
  #       redirect_to universities_majors_path
  #     end
  #   end
  # end

  # def registers
  #   @registers = @major.registers.page(params[:page]).per 10
  # end

  # def export_registers
  #   @registers = @major.registers
  #   @date = Date.today.to_date
  #   respond_to do |format|
  #     format.html
  #     format.xlsx {render xlsx: 'export_registers', filename: "#{current_university.code}_#{@major.code}_#{@date}.xlsx"}
  #   end
  # end

  # def recomment_benchmarks
  #   @majors = current_university.majors
  #   unless params[:recomment_benchmark].nil?
  #     @major = Major.find_by id: params[:recomment_benchmark][:major_id]
  #   end
  # end

  # private
  # def major_params
  #   params.require(:major).permit(:code, :target, :benchmark1, :benchmark2,
  #     :benchmark3, major_infos_attributes: [:id, :name, :_destroy])
  # end

  def export_file_excel
    @majors = current_university.majors
    @date = Date.today.to_date
    respond_to do |format|
      format.html
      format.xlsx {render xlsx: 'export_benchmark', filename: "#{current_university.code}_majors_group_exam_benchmark#{@date}.xlsx"}
    end
  end

  def import_file_excel
    if params[:file].nil?
      flash[:alert] = t "admin.examinee.file_nil"
      redirect_to universities_majors_path
    else
      begin
        MajorGroupExam.transaction do
          MajorGroupExam.import_benchmark(params[:file], current_university.id)
          notice = t 'admin.examinee.import_csv'
          redirect_to :back, notice: notice
        end
      rescue => err
        flash[:danger] = err.to_s
        redirect_to universities_benchmarks_path
      end
    end
  end
  private
  def check_university
    if current_university.nil?
      flash[:error] = "Access denied."
      redirect_to root_url
    end
  end
end