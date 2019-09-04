class TargetsController < ApplicationController
  PER = 5

  def index
    @targets = Target.all.page(params[:page]).per(PER).limit(5)
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

  def create
    
  end

  def search
    @keyword = params[:keyword]
    @targets = Target.where(genre:@keyword).order("time DESC").page(params[:page]).per(PER)
  end

  private
  def target_params
    params.require(:target).permit(:genre , :title , :time , :text , :url , :img).merge(user_id: current_user.id)
  end

end
