class TargetsController < ApplicationController
  PER = 5

  def index
    @targets = Target.order(time: "DESC")
  end

  def new
    @target = Target.new

  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to controller: :periods, action: :new
    else
      redirect_to action: :new
    end
  end

  def show
    @target = Target.find(params[:id])
    @howto = Howto.new
  end

  def category_search
    @keyword = params[:keyword]
    @targets = Target.where(genre:@keyword).order("time DESC")
  end

  def feature_search
    @keyword = params[:keyword]
    @targets = Target.where(feature:@keyword).order("time DESC")
  end

  private
  def target_params
    params.require(:target).permit(:genre , :title , :time , :text , :url , :img , :feature).merge(user_id: current_user.id)
  end

end
