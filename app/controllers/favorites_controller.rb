class FavoritesController < ApplicationController
  def create

    @user_id = current_user.id
    @target_id = Target.find(params[:id]).id
    @favorite = Favorite.new(target_id: @target_id, user_id: @user_id)
      if @favorite.save
        redirect_to controller: 'targets', action: 'index'
      end

  end

  def show

  end



  def destroy

  end
end
