class PeriodsController < ApplicationController

  def new
    @period = Period.new
  end

  def create
    Period.create(period_params)  
    redirect_to controller: :targets, action: :index
  end

  private
  def period_params
    params.require(:period).permit(:time).merge(user_id: current_user.id)
  end

end
