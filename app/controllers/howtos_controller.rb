class HowtosController < ApplicationController

  def index
  end

  def create
    
    @target = Target.find(params[:target_id])
    @howtos = @target.howtos.new(howto_params)
    if @howtos.save
      respond_to do |format|
        format.json        
      end
    end
end

  private
  def howto_params
    params.require(:howto).permit(:comment).merge(user_id: current_user.id , target_id:@target.id)
  end
end
