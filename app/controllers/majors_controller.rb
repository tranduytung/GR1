class MajorsController < ApplicationController
  def index
    @university = University.find_by id: params[:university_id]
    @majors = @university.majors
  end

  def show
  end

  def edit
  end

  def new
  end
end
