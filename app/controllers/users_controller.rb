class UsersController < ApplicationController

  def show
    @targets = current_user.targets
  end

end