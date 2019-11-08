class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @errors = flash[:errors]
    end

    def create
        @appearance = Appearance.create(strong_param)

        if @appearance.valid?
            # byebug
            redirect_to episode_path(@appearance.episode.id)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def strong_param
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
