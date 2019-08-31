class PeriodsController < ApplicationController
  
  def new
    @period = Period.new
  end

  def create
    @period = Period.create(period_params)
  end

  private
  def period_params
    params.require(:period).permit(:time)
  end

end
