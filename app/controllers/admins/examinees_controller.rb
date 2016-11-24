class Admins::ExamineesController < ApplicationController
  load_and_authorize_resource

  def index
    # @search = @users.all.ransack params[:q]
    # if params[:q].nil?
    #   @users = @users.page(params[:page]).per Settings.admin.user.per_page
    # else
    #   @users = @search.result.page(params[:page]).
    #     per Settings.admin.user.per_page
    # end
    @examinees = @examinees.page(params[:page]).per 10
  end

  def show
    @result = @examinee.result
    @group_graduated_exam = GroupGraduatedExam.find_by id:
      @examinee.group_graduated_exam_id
    @exam_graduated_all = @group_graduated_exam.to_exam_graduated
    @exam_all = Exam.all
  end

  def create
    if @examinee.save
      flash[:success] = t "admin.examinee.add_success"
      redirect_to admins_examinees_path
    else
      flash[:danger] = t "admin.examinee.add_fail"
      render :new
    end
  end

  def update
    if @examinee.update_attributes examinee_params
      flash[:success] = t "admin.examinee.edit_success"
      redirect_to admins_examinees_path
    else
      flash[:danger] = t "admin.examinee.edit_failed"
      render :edit
    end
  end

  def destroy
    if @examinee.destroy
      flash[:success] = t "admin.examinee.delete_success"
    else
      flash[:danger] = t "admin.examinee.delete_fail"
    end
    redirect_to admins_examinees_path
  end

  def import_file_csv
    if params[:file].nil?
      flash[:alert] = t "admin.examinee.file_nil"
      redirect_to admins_examinees_path
    elsif File.extname(params[:file].original_filename) != ".csv"
      flash[:danger] = t "app.flash.file_format_invalid"
      redirect_to admins_examinees_path
    else
      begin
        Examinee.transaction do
          Examinee.delete_all
          Examinee.reset_pk_sequence
          Examinee.import_csv(params[:file])
          notice = t 'admin.examinee.import_csv'
          redirect_to :back, notice: notice
        end
      rescue => err
        flash[:danger] = err.to_s
        redirect_to admins_examinees_path
      end
    end
  end

  def export_file_csv
    @examinees = Examinee.all
    @date = Date.today.to_date
    respond_to do |format|
      format.html
      format.csv {send_data @examinees.to_csv, filename: "examinees_#{@date}.csv"}
    end
  end

  def export_file_excel
    @examinees = Examinee.all
    @date = Date.today.to_date
    respond_to do |format|
      format.html
      format.xlsx {render xlsx: 'export_file_excel', filename: "examinees_#{@date}.xlsx"}
    end
  end

  def import_file_excel
    if params[:file].nil?
      flash[:alert] = t "admin.examinee.file_nil"
      redirect_to admins_examinees_path
    else
      begin
        Examinee.transaction do
          # Examinee.delete_all
          # Examinee.reset_pk_sequence
          Examinee.import(params[:file])
          notice = t 'admin.examinee.import_csv'
          redirect_to :back, notice: notice
        end
      rescue => err
        flash[:danger] = err.to_s
        redirect_to admins_examinees_path
      end
    end
  end

  private
  def examinee_params
    params.require(:examinee).permit :people_id, :student_id, :name, :email,
      :password, :phone, :home_town, :hight_school, :birthday, :year,
      :password_confirmation
  end
end
