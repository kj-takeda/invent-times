class FavoritesController < ApplicationController
  def create

    @user_id = current_user.id
    @target_id = Target.find(params[:id]).id
    @favorite = Favorite.new(target_id: @target_id, user_id: @user_id)
    if @favorite.save
      redirect_to controller: :targets, action: :index
    end
  end

  def destroy
    @favorite = Favorite.find_by(target_id:params[:id])
    if @favorite.destroy
      redirect_to controller: :users, action: :show
    end
  end
end
