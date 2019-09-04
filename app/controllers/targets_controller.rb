class TargetsController < ApplicationController
  PER = 5

  def index
    @targets = Target.order("time DESC").page(params[:page]).per(PER)
  end

  def new
    @target = Target.new
  end

  def create
    Target.create(target_params)
    redirect_to action: :new
  end

  def show
  end

  private
  def target_params
    params.require(:target).permit(:genre , :title , :time , :text , :url , :img).merge(user_id: current_user.id)
  end

end
