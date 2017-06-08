class StaticPagesController < ApplicationController
  def home
    @time = RegisterTime.find_by(year: Time.now.year)
  end
end
