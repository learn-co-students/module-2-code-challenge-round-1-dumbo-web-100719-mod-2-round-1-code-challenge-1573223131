class AppearancesController < ApplicationController
    before_action :set_appearance, only: [:show, :edit, :update]

    def show
    end

    def new
        @appearance = Appearance.new
        @errors = flash[:errors]
    end

    def create
        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    def edit
        @errors = flash[:errors]
    end

    def update
        @appearance.update(appearance_params)
        
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to edit_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

    def set_appearance
        @appearance = Appearance.find(params[:id])
    end

end
