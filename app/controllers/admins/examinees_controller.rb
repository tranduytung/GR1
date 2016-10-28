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

  private
  def examinee_params
    params.require(:examinee).permit :people_id, :student_id, :name, :email,
      :password, :phone, :home_town, :hight_school, :birthday, :year,
      :password_confirmation
  end
end
