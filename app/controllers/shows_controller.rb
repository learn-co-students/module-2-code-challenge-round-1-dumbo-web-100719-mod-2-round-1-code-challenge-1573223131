class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
  end

  def create
    strong_params = params.require(:show).permit(:guest_id, :episode_id, :rating)
    @show = Show.create(strong_params)

    if @show.valid?
      redirect_to @show
    else
      flash[:errors] = @show.errors.full_messages
      redirect_to new_show_path
    end
  end
end
