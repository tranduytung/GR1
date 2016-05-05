class ExamineesController < ApplicationController
  before_action :logged_in_examinee, only: [:show]
  before_action :correct_examinee, only: [:show]

  def show
    @examinee = Examinee.find params[:id]
    @result = @examinee.result
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
