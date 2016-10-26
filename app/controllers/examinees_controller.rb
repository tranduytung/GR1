class ExamineesController < ApplicationController
  def index
    @examinees = Examinee.all
  end

  def show
    @examinee = Examinee.find params[:id]
    @result = @examinee.result
    @group_graduated_exam = GroupGraduatedExam.find_by id:
      @examinee.group_graduated_exam_id
    @exam_graduated_all = @group_graduated_exam.to_exam_graduated
    @exam_all = Exam.all
  end
end
