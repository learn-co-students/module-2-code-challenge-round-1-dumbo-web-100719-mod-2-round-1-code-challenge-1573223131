class AppearancesController < ApplicationController
    
    def new
        @appearance = Appearance.new
    end

    def create
        a_param = params.require(:appearance).permit(:guest_id, :episode_id, :guest_rating)
        @appearance = Appearance.find(params[:id])
        @appearance.create(a_param)
     
        redirect_to episode_path(@appearance)
    end
end
