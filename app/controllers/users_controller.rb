class UsersController < ApplicationController

  def edit
  end

  def show
   @targets = current_user.favorites
  end
  
end