class TargetsController < ApplicationController
  PER = 5

  def index
    @targets = Target.order(time: "DESC")
  end

  def new
    @target = Target.new
  end

  def create
    @target = Target.create(target_params)
    redirect_to action: :new
  end

  def show
  end

  def category_search
    @keyword = params[:keyword]
    @targets = Target.where(genre:@keyword).order("time DESC")
  end



  private
  def target_params
    params.require(:target).permit(:genre , :title , :time , :text , :url , :img , :feature).merge(user_id: current_user.id)
  end

end
