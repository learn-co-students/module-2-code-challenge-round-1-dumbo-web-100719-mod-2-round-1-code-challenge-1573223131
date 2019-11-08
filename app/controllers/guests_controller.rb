class GuestsController < ApplicationController
  before_action :set_guest, only: [:show]
  def index
    @guests = Guest.all
  end

  def show
    @episodes = @guest.episodes
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

 
end
