class EpisodesController < ApplicationController
  before_action :set_episodes, only: [:show]
  def index
    @episodes = Episode.all
  end

  def show
  
  end

  private

  def set_episodes
    @episode = Appearance.find(params[:id])
  end
end
