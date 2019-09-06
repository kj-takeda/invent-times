class HowtosController < ApplicationController

  def index
  end

  def new
    @howto = Howto.new
  end

  def create
    @howto = Howto.create
    redirect_to action: :new
  end

end
