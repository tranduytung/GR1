class SearchsController < ApplicationController
  def major
    @search = MajorInfo.all.ransack params[:q]
    if params[:q].nil?
      @majors = []
    else
      @majors = @search.result.page(params[:page]).per 10
    end
  end
end
