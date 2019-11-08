class AppearancesController < ApplicationController

  before_action :appearance_params, only: [:create]

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.create(@appearance_params)
    
    redirect_to episode_path(@appearance.episode_id)
  end


private

def appearance_params
  @appearance_params = params.require(:appearance).permit(:guest_id, :episode_id, :rating)
end


end
