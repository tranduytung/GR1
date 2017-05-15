class Examinees::SuggestionsController < ApplicationController
  before_action :validate_examinee
  def major
    @major_infos = MajorInfo.all
    @search = @major_infos.ransack params[:q]
    @group_exams = GroupExam.all
    @group_exam = params[:group_exam]
    if params[:q].nil? && !@group_exam.present?
      @majors = []
    else
      @majors = @search.result
      if @group_exam.present?
        score = cal_review_score current_examinee.result, @group_exam
        @majors = @majors.where("major_id IN (select major_id FROM major_group_exams
          where group_exam_id = ? and benchmark1_last_year <= ? and
          benchmark1_last_year >= ?)", @group_exam.to_i, score + 2, score - 2)
      end
      @majors = @majors.page(params[:page]).per 5
    end
  end

  private
  def validate_examinee
    if current_examinee.nil?
      flash[:success] = t "access_denied"
      redirect_to root_path
    end
  end
end
