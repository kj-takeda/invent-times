class TargetsController < ApplicationController
  
  def index
    @Targets = Target.all
  end

  def new
    @Target = Target.new
  end

  def show
  end

end
