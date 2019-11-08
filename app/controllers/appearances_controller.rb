class AppearancesController < ApplicationController

    before_action :set_appearance, only: [:show, :edit, :update]
    def show
        #
    end

    def new
        @appearance = Appearance.new
        @errors = flash[:errors]
    end

    def create
        @appearance = Appearance.create(strong_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else
            flash[:errors] = @appearance.errors.full_messages
        end
    end

    def update
        @appearance.update(strong_params)
        if @appearance.valid?
            redirect_to episodes_path
        else
            flash[:errors] = @appearance.errors.full_messages
        end
    end

    private
    def set_appearance
        @appearance = Appearance.find(params[:id])
    end

    def strong_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end
end
