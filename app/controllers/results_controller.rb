class ResultsController < ApplicationController
  before_action :corrent_cluster, only: [:edit, :update]
  before_action :correct_cluster_and_examinee, only: [:edit, :update]
  before_action :correct_result_and_examinee,  only: [:edit, :update]

  def edit
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinee = Examinee.find_by id: params[:examinee_id]
    @result = Result.find params[:id]
    @exam_all = Array.new
    Exam.all.each do |ex|
      @exam_all << ex
    end
  end

  def update
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinee = Examinee.find_by id: params[:examinee_id]
    @result = Result.find params[:id]
    if @result.update_attributes(result_params)
      @examinee.update_attributes(
        graduate_score: @result.graduate_score_caculation)
      flash[:success] = "Update result"
      redirect_to [@cluster,@examinee]
    else
      render "edit"
    end
  end

  private

  def result_params
    params.require(:result).permit(:math, :literature, :english,
      :physical, :chemistry, :biological, :history, :geography)
    # params.require(:result).permit.!
  end

  def correct_cluster_and_examinee
    @cluster = Cluster.find_by id: params[:cluster_id]
    @examinee = Examinee.find_by id: params[:examinee_id]
    unless @cluster == @examinee.cluster
      flash[:danger] = t "message.you_are_not_cluster_correct"
      redirect_to root_path
    end
  end

  def correct_result_and_examinee
    @examinee = Examinee.find_by id: params[:examinee_id]
    @result = Result.find params[:id]
    unless @result == @examinee.result
      flash[:danger] = t "message.you_are_not_examinee_correct"
      redirect_to root_path
    end
  end
end
