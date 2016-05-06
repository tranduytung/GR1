class ExamineesController < ApplicationController
  before_action :logged_in_examinee, only: [:show]
  before_action :correct_examinee, only: [:show]

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

  private

  def correct_examinee
    @examinee = Examinee.find params[:id]
    unless current_examinee? @examinee
      flash[:danger] = t "message.loged_in_with_other_account"
      redirect_to root_url 
    end
  end

end
