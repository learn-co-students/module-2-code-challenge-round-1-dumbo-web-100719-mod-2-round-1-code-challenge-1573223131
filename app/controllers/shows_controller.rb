class ShowsController < ApplicationController
    before_action :set_show, only: [:show]
    def index
        @shows = Show.all
    end
    
    def show 

    end

    def new
        @show = Show.new
        @guests = Guest.all
        @episodes = Episode.all
        @errors = flash[:error]
    end

    def create
        @show = Show.new(show_params)
        @show.save

        if @show.valid?
            redirect_to @show.episode
        else
            flash[:error] = @show.errors.full_messages
        end
        
    end

    private

    def set_show
        @show = Show.find(params[:id])
    end

    def show_params
        params.require(:show).permit(:guest_id,:episode_id,:rating)
    end
end
