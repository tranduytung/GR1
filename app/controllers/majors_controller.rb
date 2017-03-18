class MajorsController < ApplicationController
  def index
    @university = University.find_by id: params[:university_id]
    @majors = @university.majors.includes(:major_infos)
  end

  def show
    @university = University.find_by id: params[:university_id]
    @major = @university.majors.find_by id: params[:id]
  end
end
