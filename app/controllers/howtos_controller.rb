class HowtosController < ApplicationController

  def create
    @target = Target.find(params[:target_id])
    @howtos = @target.howtos.new(howto_params)
    if @howtos.save
      redirect_to controller: 'targets', action: 'show'
    end
end

def edit
  @target = Target.find(params[:target_id])
  @howto = Howto.find(params[:id])
end

def update
  @target = Target.find(params[:target_id])
  @howto = Howto.find(params[:id])
  
  if @howto.update(howto_params)
    redirect_to  target_path(@target)
  else
    render 'edit'
  end
end

  private
  def howto_params
    params.require(:howto).permit(:comment).merge(user_id: current_user.id , target_id:@target.id)
  end
end
