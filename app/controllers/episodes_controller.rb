class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show 
    @episode = Episode.find(params[:id])
    @episodes = Episode.all
  end

end
