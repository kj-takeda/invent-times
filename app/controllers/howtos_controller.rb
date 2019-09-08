class HowtosController < ApplicationController

  def index
  end

  def create
    @target = Target.find(params[:target_id])
    @target.howtos.create(howto_params)
  end

  private
  def howto_params
    params.require(:howto).permit(:comment).merge(user_id: current_user.id , target_id:@target.id)
  end
end
