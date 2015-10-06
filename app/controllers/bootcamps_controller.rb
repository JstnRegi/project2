class BootcampsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @bootcamp = Bootcamp.find(params[:id]) 

    render :show

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
