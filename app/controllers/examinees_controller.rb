class ExamineesController < ApplicationController
  def show
    @examinee = Examinee.find params[:id]
  end
end
