class ExamineesController < ApplicationController
  before_action :logged_in_examinee, only: [:show]
  before_action :correct_examinee, only: [:show]

  def show
    @examinee = Examinee.find params[:id]
    @result = @examinee.result
    @group_graduated_exam = GroupGraduatedExam. find_by(
      id: @examinee.group_graduated_exam_id)
    @exam = Array.new(20)
    @exam1 = Exam.find_by id: @group_graduated_exam.exam_id_1
    @exam2 = Exam.find_by id: @group_graduated_exam.exam_id_2
    @exam3 = Exam.find_by id: @group_graduated_exam.exam_id_3
    @exam4 = Exam.find_by id: @group_graduated_exam.exam_id_4
    @exam = [@exam1, @exam2]
  end

  private

  def correct_examinee
    @examinee = Examinee.find params[:id]
    unless current_examinee? @examinee
      flash[:danger] = t "message.loged_in_with_other_account"
      redirect_to root_url 
    end
  end

end
