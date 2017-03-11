class SearchsController < ApplicationController
  def major
    @search = MajorInfo.all.ransack params[:q]
    if params[:q].nil?
      @majors = []
    else
      @majors = @search.result.page(params[:page]).per 5
    end
  end
end
