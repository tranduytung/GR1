class ChartsController < ApplicationController
  def graduate
  end

  def graduated
    # render json: Examinee.group(:graduated).count
    result = [["Graduate", Examinee.all.where(graduated: true).count],
    ["Not Graduate", Examinee.all.where(graduated: false).count]]
    render json: result
  end

  def graduate_score
    render json: Examinee.group(:graduate_score).count
  end

  def home_town
    render json: Examinee.group(:home_town).count
  end
end
