class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest=Guest.find(params[:id])
  end

  def new 
    @guest=Guest.new
    @episode=Episode.new
  end
  
  def create
    @guest = Guest.create(guest_params)
    redirect_to episodes_path(@guest.episodes)
  end

  def guest_params
    params.require(:guest).permit(:name,:occupation)
  end



end
