class SearchsController < ApplicationController
  def index
    @examinees = Examinee.all
    @search = @examinees.ransack params[:q]
    if params[:q].nil?
      @examinees = @examinees.page(params[:page]).per 10
    else
      @examinees = @search.result.page(params[:page]).per 10
    end
  end
end
