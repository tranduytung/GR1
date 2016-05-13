class ExamineesController < ApplicationController
  before_action :correct_examinee_or_cluster, only: [:show]
  before_action :corrent_cluster, only: [:index]
  def index
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinees = @cluster.examinees
  end

  def show
    @examinee = Examinee.find params[:id]
    @result = @examinee.result
    @group_graduated_exam = GroupGraduatedExam. find_by(
      id: @examinee.group_graduated_exam_id)
    @exam_graduated_all = Array.new
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_1)
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_2)
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_3)
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_4)
    @exam_all = Array.new
    Exam.all.each do |ex|
      @exam_all << ex
    end
  end

  def edit
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinee = Examinee.find params[:id]
  end

  def update
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinee = Examinee.find params[:id]
    if @examinee.update_attributes(examinee_params)
      flash[:success] = "Update examinee"
      redirect_to [@cluster,@examinee]
    else
      render "edit"
    end
  end

  def destroy
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinee = Examinee.find params[:id]
    @examinee.destroy
    flash[:success] = t "message.examinee_deleted"
    redirect_to cluster_examinees_path
  end

  private

  def correct_examinee_or_cluster
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinee = Examinee.find params[:id]
    if current_examinee.nil?
      if current_cluster.nil?
        flash[:danger] = t "message.please_log_in"
        redirect_to root_path
      else
        unless current_cluster? @cluster
          flash[:danger] = t "message.you_are_not_cluster_correct"
          redirect_to root_path
        else
          unless @examinee.cluster == @cluster
            flash[:danger] = t "message.you_are_not_cluster_correct"
            redirect_to root_path
          end
        end
      end
    else
      unless current_examinee? @examinee
        flash[:danger] = t "message.you_are_not_current_examinee"
        redirect_to root_path
      end
    end
  end

  def examinee_params
    params.require(:examinee).permit(:name, :people_id, :student_id,
      :email, :phone, :home_town, :hight_school, :birthday)
  end

end
