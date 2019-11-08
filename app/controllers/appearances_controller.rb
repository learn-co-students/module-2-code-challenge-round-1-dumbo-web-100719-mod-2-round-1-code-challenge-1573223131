class AppearancesController < ApplicationController
  before_action :set_appearances, only: [:show,:edit,:update,:destroy]
  def index
    @appearance = Appearance.all
  end

  def show
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    if @appearance.valid?
      redirect_to episode_path(@appearance.episode.id)
    else
      flash[:errors] = @appearance.errors.full_messages
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_appearnces
      @appearance = Appearance.find(params[:id])
    end

    def appearance_params
      params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
