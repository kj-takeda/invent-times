class HowtosController < ApplicationController

  def index
  end

  def create
   @target = Target.find(params[:target_id])
   @howto = Howto.create(howto_params)
  end

  private
  def howto_params
    params.require(:howto).permit(:comment , :share).merge(user_id: current_user.id, target_id: @target.id)
  end

end
