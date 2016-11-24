class UniversitiesController < ApplicationController
  def show
    @university= University.find_by id: params[:id]
  end
end
