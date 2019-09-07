class UsersController < ApplicationController

  def edit
  end

  def show
   @targets = current_user.favorite_targets
  end
  
end