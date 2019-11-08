class AppearancesController < ApplicationController
    def new

        @appearance = Appearance.new
    end

    def create
        
        @appearance = Appearance.create(params.require(:appearance).permit(:guest_rating, :guest_id, :episode_id))
        
        if @appearance.valid?
            redirect_to @appearance.episode
            
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path 
        end

    end
end

