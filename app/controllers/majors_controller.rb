class MajorsController < ApplicationController
  def index
    @majors = Major.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
