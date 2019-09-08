class UsersController < ApplicationController

  def edit
  end

  def show
    @targets = Target.all
  end
  
end