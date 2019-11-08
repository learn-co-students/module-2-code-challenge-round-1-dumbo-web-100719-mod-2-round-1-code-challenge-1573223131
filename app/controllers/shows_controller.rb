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
      @show = Show.create(show_params(:name,:episode_id,:guest_id,:rating,:show_id))
      redirect_to show
    end

    private

    def show_params(*args)
     params.require(:show).permit(*args)
    end
end
