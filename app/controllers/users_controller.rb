class UsersController < ApplicationController

  def edit
  end

  def show
    @targets = current_user.targets
  end

end