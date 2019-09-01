class PeriodsController < ApplicationController
  
  before_action :authenticate_user!

  def new
    @period = Period.new
  end

  def create
    Period.create(period_params)  
  end

  private
  def period_params
    params.require(:period).permit(:time).merge(user_id: current_user.id)
  end

end
