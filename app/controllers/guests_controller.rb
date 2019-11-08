class GuestsController < ApplicationController

  before_action :set_guest, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
    @appearances = Appearance.all
    # @episodes = Episodes.all
  end


  private
    
  def set_guest
    @guest = Guest.find(params[:id])
  end

  # def guest_params
  #   params.require(:person).permit(:name, :age)
  # end


end

