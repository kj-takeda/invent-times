class PeriodsController < ApplicationController

  before_action :authenticate_user!

  def new
    @period = Period.new
  end

  def create
    @period = Period.new(period_params) 
    if @period.save
      redirect_to controller: :targets, action: :index
    else
      redirect_to action: :new
    end
  end

  private
  def period_params
    params.require(:period).permit(:time).merge(user_id: current_user.id)
  end

end
