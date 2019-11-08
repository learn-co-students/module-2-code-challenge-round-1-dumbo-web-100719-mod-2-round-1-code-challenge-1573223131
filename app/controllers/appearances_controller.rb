class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @errors = flash[:errors]
    end 

    def create
        @appearance = Appearance.create(strong_params)
        if @appearance.valid?
            redirect_to episodes_path(@appearance.episode_id)
            else
           flash[:errors] = @appearance.errors.full_messages
          redirect_to new_appearance_url
          end
    end

    private

    def strong_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end 
end
