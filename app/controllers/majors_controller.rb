class MajorsController < ApplicationController
  def index
    @university = University.find_by id: params[:university_id]
    @majors = @university.majors.includes(:major_infos)
  end

  def show
    @major = Major.find_by id: params[:id]
  end

  def edit
  end

  def new
  end
end
