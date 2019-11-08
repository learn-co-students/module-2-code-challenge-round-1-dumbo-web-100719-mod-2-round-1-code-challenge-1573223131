class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new
    end

    def edit
        @appearance = Appearance.find(params[:id])
    end

    def create
        appearances_params = params.require(:appearance).permit(:rating, :episode_id, :guest_id)
        appearance = Appearance.new
        if vaild?
            appearance.save
        else
            flash[:error] = "Wrong Format"
            render :new
        end
    end

end

