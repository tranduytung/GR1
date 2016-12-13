class UniversitiesController < ApplicationController
  def show
    @university= University.find_by id: params[:id]
  end

  def index
    @universities = University.all.page(params[:page]).per 10
  end
end
