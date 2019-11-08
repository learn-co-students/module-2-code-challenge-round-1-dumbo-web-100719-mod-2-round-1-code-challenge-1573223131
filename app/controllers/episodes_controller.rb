class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show]
  def index
    @episodes = Episode.all
  end

  def show
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(episodes_params)
    if valid? 
      redirect_to @episode
    else
      flash[:error] = "Rating must be from 1 to 5"
  end

  private
  def episodes_params
    params.require(:episode).permit(:date, :number)
  end

  def set_episode
    @episode = Episode.find(params[:id])
  end
end
