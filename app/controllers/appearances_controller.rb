class AppearancesController < ApplicationController

    def new
        @guests = Guest.all 
        @episodes = Episode.all
        @appearance = Appearance.new 
    end 

    def create 
        appearance_params = params.require(:appearance).permit(:guest_id, :episode_id, :rating)
        @appearance = Appearance.new(appearance_params)
        if @appearance.valid?
            @appearance.save 
            redirect_to @appearance.episode 
        elsif 
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path 
        end 
    end 

end
